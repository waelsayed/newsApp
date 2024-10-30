import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wael_news/models/article_model.dart';
import 'package:wael_news/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles ;
  const NewsListView({super.key, required this.articles});
  @override
  
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                //print(articles[index]);
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: NewsTile(article: articles[index]),
                );
              },
            ),
          );
  }
}

// class _NewsListViewState extends State<NewsListView> {
  

//   bool isLoading = true;
//   Future<List<ArticleModel>> getAreticles() async {
//     return await NewsService(dio: Dio()).getNews();
//   }

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration.zero, () async {
//       articles = await getAreticles();
      
//       setState(() {
//         isLoading = false;
//       });
//     });
//   }

//   void initLoad() async {
//     articles = await getAreticles();
//     // print(articles);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 //print(articles[index]);
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 12),
//                   child: NewsTile(article: articles[index]),
//                 );
//               },
//             ),
//           );
//   }
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   Future<List<ArticleModel>> getAreticles() async {
//     return await NewsService(dio: Dio()).getNews();
//   }

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration.zero, () async {
//       articles = await getAreticles();
      
//       setState(() {
//         isLoading = false;
//       });
//     });
//   }

//   void initLoad() async {
//     articles = await getAreticles();
//     print(articles);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 print(articles[index]);
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 12),
//                   child: NewsTile(article: articles[index]),
//                 );
//               },
//             ),
//           );
//   }
// }