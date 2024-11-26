import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      imageUrl: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      imageUrl: 'assets/entertaiment.avif',
      categoryName: 'Entertaiment',
    ),
    CategoryModel(
      imageUrl: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      imageUrl: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      imageUrl: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      imageUrl: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      imageUrl: 'assets/general.avif',
      categoryName: 'General',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryItem: categories[index],
          );
        },
      ),
    );
  }
}
