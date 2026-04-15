class Newsmodel {
  final String? title;
  final String? description;
  final String? urlToImage;

  Newsmodel({
    required this.title,
    required this.description,
    required this.urlToImage,
  });
  factory Newsmodel.fromJson(Map<String, dynamic> json) {
    return Newsmodel(
      title: json['title'],
      description: json['description'],
      urlToImage: json['image_url'],
    );
  }
}
