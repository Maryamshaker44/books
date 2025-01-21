part of 'book_cubit.dart';

@immutable
sealed class BookState {}

final class BookInitial extends BookState {}
final class BookLoading extends BookState {}

final class BookSuccess extends BookState {
  final List<BookModel> model;
  BookSuccess({required this.model});
}

final class BookError extends BookState {
  final String error;
  BookError({required this.error});
}
