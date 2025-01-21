class IndustryIdentifiers {
  final String type;
  final String identifier;

  IndustryIdentifiers({required this.type, required this.identifier});

  factory IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifiers(
      type: json['type'],
      identifier: json['identifier'],
    );
  }
}
