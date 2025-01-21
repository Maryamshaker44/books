import 'package:books/feature/books/model/volume_info.dart';

class BookModel {
  final VolumeInfo volumeInfo;

  BookModel({required this.volumeInfo});

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
    );
  }
}
