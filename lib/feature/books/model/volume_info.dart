import 'image_links.dart';

class VolumeInfo {
  final String title;
  final List authors;
  final num pageCount;
  final List categories;
  final ImageLinks imageLinks;
  final String previewLink;

  VolumeInfo(
      {required this.title,
      required this.authors,
      required this.pageCount,
      required this.categories,
      required this.imageLinks,
      required this.previewLink,
      });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: json['authors'],
      pageCount: json['pageCount'],
      categories: json['categories'],
      imageLinks: ImageLinks.fromJson(json['imageLinks']),
      previewLink: json['previewLink'],
    );
  }
}
