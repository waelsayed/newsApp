import 'package:flutter/material.dart';
import 'package:wael_news/models/category_model.dart';
import 'package:wael_news/widgets/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CategoryView(categoryName: categoryModel.categoryName,);
          }));
        },
        child: Container(
          margin: const EdgeInsets.only(left: 5),
          height: 120,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(categoryModel.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
