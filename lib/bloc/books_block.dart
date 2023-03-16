import 'dart:convert';

import 'package:books_app_test/bloc/books_event.dart';
import 'package:books_app_test/bloc/books_state.dart';
import 'package:books_app_test/extension/list_extension.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:books_app_test/hive/storage.dart';
import 'package:books_app_test/models/item_model.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  BooksBloc() : super(BooksState()) {
    on<OnChangeEvent>(_onChangeEvent);
    on<OnFirstEvent>(_onFirstEvent);
    on<OnFavoritChangeEvent>(_onFavoritChangeEvent);
  }
  final _storage = Storage();

  void _onChangeEvent(OnChangeEvent event, Emitter emit) {
    emit(state.copyWith(
      bookname: event.bookTitle,
      bookaouthor: event.bookAuthor,
      bookdate: event.bookDate,
      bookimage: event.booksImagePat,
      description: event.booksDescription,
    ));
  }

  void _onFirstEvent(OnFirstEvent event, Emitter emit) async {
    final String response =
        await rootBundle.loadString('assets/jsons/books.json');
    final data = await json.decode(response);
    final _items =
        (data["items"] as List<dynamic>).map((e) => Items.fromJson(e)).toList();
    emit(state.copyWith(all: _items));
    for (int i = 0; i < _items.length; i++) {
      bool isfavorit = _storage.favorites.containsWhere(
        (element) {
          return _items[i].id == element.id;
        },
      );
      if (isfavorit) {
        _items[i] = _items[i].copyWith(isFavoite: true);
      }
    }
    emit(state.copyWith(favorits: _storage.favorites));
  }

  void _onFavoritChangeEvent(OnFavoritChangeEvent event, Emitter emit) {
    List first = state.favorits;
    final newitem = event.item.copyWith(isFavoite: !event.item.isFavoite!);
    first.add(newitem);
    _storage.favorites = first;
    final all = state.all;
    all.removeWhere((e) => e.id == event.item.id);
    all.add(newitem);
    emit(state.copyWith(
      favorits: first,
      all: all,
    ));
  }
}
