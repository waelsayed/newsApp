import 'package:flutter/material.dart';
import 'package:wael_news/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String categoryName;
  const CategoryView({super.key, required this.categoryName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: categoryName,
            )
          ],
        ),
      ),
    );
  }
}
