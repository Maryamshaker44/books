class ImageLinks {
  final String thumbnail;

  ImageLinks({required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(thumbnail: json['thumbnail']);
  }
}
