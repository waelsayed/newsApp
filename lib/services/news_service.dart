import 'package:dio/dio.dart';
import 'package:wael_news/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response =
          //https://newsapi.org/v2/top-headlines?apiKey=ad291605384246f888878d89b3e694a2&category
          //https://newsapi.org/v2/everything?q=bitcoin&apiKey=ad291605384246f888878d89b3e694a2
          await dio.get(
              "https://newsapi.org/v2/top-headlines?apiKey=ad291605384246f888878d89b3e694a2&category=$category");
      //
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      ArticleModel article =
          ArticleModel(urlToImage: '', title: '', description: '');
      List<Map<String, dynamic>> result =
          ArticleModel.MapListToObject(articles, article.toMap());
      List<ArticleModel> articleList = [];
      for (var i = 0; i < result.length; i++) {
        ArticleModel article = ArticleModel.fromMap(result[i]);
        articleList.add(article);
      }
      return articleList;
    } catch (e) {
      return [];
      // return [
      //   ArticleModel(description: 'error', title: 'error', urlToImage: 'error')
      // ];
    }
  }
}
