import 'package:flutter/material.dart';
import 'package:wael_news/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel article;
  const NewsTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            article.urlToImage ?? '',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              // Fallback to a local asset image when network image fails
              return Image.asset(
                'assets/nophoto.jpg',
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              );
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          article.title ?? 'No title found!',
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          article.description ?? 'No content exists!',
          style: const TextStyle(fontSize: 17, color: Colors.grey),
        ),
      ],
    );
  }
}
