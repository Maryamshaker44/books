class Epub {
  final bool isAvailable;

  Epub({required this.isAvailable});

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'],
    );
  }
}
