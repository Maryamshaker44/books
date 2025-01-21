// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:books/feature/books/model/book_model.dart';
import 'package:meta/meta.dart';
import '../data/book_data.dart';
part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this.bookData) : super(BookInitial());

  final BookData bookData;
  getDataCubit() async {
    emit(BookLoading());
    var response = await bookData.getData();
    emit(BookSuccess(model: response));
  }
}
