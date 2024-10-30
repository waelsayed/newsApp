import 'package:flutter/material.dart';
import 'package:wael_news/models/category_model.dart';
import 'package:wael_news/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/business.jpg", categoryName: "Business"),
    CategoryModel(
        image: "assets/entertainment.jpg", categoryName: "Entertainment"),
    CategoryModel(image: "assets/general.jpg", categoryName: "General"),
    CategoryModel(image: "assets/health.jpg", categoryName: "Health"),
    CategoryModel(image: "assets/science.jpg", categoryName: "Science"),
    CategoryModel(image: "assets/sports.jpg", categoryName: "Sports"),
    CategoryModel(image: "assets/technology.jpeg", categoryName: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            categoryModel: categories[index],
          );
        },
      ),
    );
  }
}
