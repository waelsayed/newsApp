import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wael_news/models/article_model.dart';
import 'package:wael_news/services/news_service.dart';
import 'package:wael_news/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  var future;
  bool isLoading = true;
  bool isError = false;
  // Future<List<ArticleModel>> getAreticles() async {
  //   return await NewsService(dio: Dio()).getNews();
  // }

  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(category: widget.category);
    // Future.delayed(Duration.zero, () async {
    //   articles = await getAreticles();

    //   setState(() {
    //     isLoading = false;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data ?? [],
          );
        } else if (snapshot.hasData) {
          return const Center(
              child: Text(
                  "Ops error while loading data , try again later :( )"));
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
