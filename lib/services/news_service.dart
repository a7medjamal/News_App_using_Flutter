// ignore_for_file: unused_catch_clause

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      String apiKey =
          "https://newsapi.org/v2/everything?q=$category&apiKey=${dotenv.env['API_KEY']}&language=en";
      Response response = await dio.get(apiKey);
      Map<String, dynamic> jsonData = response.data;
      List<ArticleModel> articles = [];
      for (var article in jsonData['articles']) {
        if (article['urlToImage'] != null &&
            article['description'] != null &&
            article['title'] != null &&
            (article['urlToImage'].startsWith('http://') ||
                article['urlToImage'].startsWith('https://'))) {
          articles.add(
            ArticleModel(
              title: article['title'],
              subtitle: article['description'],
              Image: article['urlToImage'],
            ),
          );
        }
      }
      return articles;
    } on Exception catch (e) {
      return [];
    }
  }
}
