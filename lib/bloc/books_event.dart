import 'package:books_app_test/models/item_model.dart';

abstract class BooksEvent {}

class OnChangeEvent extends BooksEvent {
  String bookTitle;
  String bookDate;
  String bookAuthor;
  String booksImagePat;

  String booksDescription;
  OnChangeEvent({
    required this.bookTitle,
    required this.bookAuthor,
    required this.bookDate,
    required this.booksImagePat,
    required this.booksDescription,
  });
}

class OnFirstEvent extends BooksEvent {}

class OnFavoritChangeEvent extends BooksEvent {
  final Items item;
  OnFavoritChangeEvent({required this.item});
}
