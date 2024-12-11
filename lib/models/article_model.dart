// ignore_for_file: non_constant_identifier_names

class ArticleModel {
  final String Image;
  final String title;
  final String subtitle;
  final String url;

  ArticleModel(
      {required this.Image, required this.title, required this.subtitle, required this.url});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      Image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
      url: json['url'],
    );
  }
}
