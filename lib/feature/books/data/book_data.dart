import 'package:books/feature/books/model/book_model.dart';
import 'package:dio/dio.dart';

class BookData {
  Future<List<BookModel>> getData() async {
    final Dio dio = Dio();
    var response = await dio.get(
        "https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science");
    Map<String, dynamic> data = response.data;
    try {
      if (response.statusCode == 200) {
        List bookItem = data['items'];
        List<BookModel> listBook =
            bookItem.map((e) => BookModel.fromJson(e)).toList();
        return listBook;
      } else {
        throw Exception('Failed to load data');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        return e.response!.data;
      } else {
        throw Exception('Failed to load data');
      }
    }
  }
}
