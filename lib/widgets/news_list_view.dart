// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: NewsTile(),
          );
        },
      ),
    );
  }
}
