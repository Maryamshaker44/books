class ReadingModes {
  final bool text;
  final bool image;

  ReadingModes({required this.text, required this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'],
      image: json['image'],
    );
  }
}
