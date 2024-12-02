// ignore_for_file: prefer_const_constructors
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/NewsService.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> article = [];
  @override
  void initState() {
    super.initState();
    _fetchGeneralNews();
  }

  Future<void> _fetchGeneralNews() async {
    article = await NewsService(Dio()).getGeneralNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: article.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: NewsTile(
              article: article[index],
            ),
          );
        },
      ),
    );
  }
}
