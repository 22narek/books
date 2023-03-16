import 'package:books_app_test/models/item_model.dart';

class BooksState {
  final String bookTitle;
  final String bookDate;
  final String bookAuthor;
  final String bookImageUrl;
  final String bookDescription;
  final List favorits;
  final List<Items> all;
  BooksState({
    this.bookTitle = '',
    this.bookDate = '',
    this.bookAuthor = '',
    this.bookImageUrl = '',
    this.bookDescription = '',
    this.favorits = const [],
    this.all = const [],
  });

  BooksState copyWith({
    String? bookname,
    String? bookdate,
    String? bookaouthor,
    String? bookimage,
    String? description,
    List? favorits,
    List<Items>? all,
  }) {
    return BooksState(
      bookTitle: bookname ?? bookTitle,
      bookDate: bookdate ?? bookDate,
      bookAuthor: bookaouthor ?? bookAuthor,
      bookImageUrl: bookimage ?? bookImageUrl,
      bookDescription: description ?? bookDescription,
      favorits: favorits ?? this.favorits,
      all: all ?? this.all,
    );
  }
}
