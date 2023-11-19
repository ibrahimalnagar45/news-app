import 'package:dio/dio.dart'; 
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio;
    

  NewsService({required this.dio});
  
  Future<List<ArticleModel>> getNews({required category}) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=f470710291bc45e19a433579aa83dde6");

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        articlesList.add(ArticleModel.fromJson( article));
      }
      return articlesList;
    } catch (e) {
      return [
    
      ];
    }
  }
}

// List<ArticleModel> getArticles({required List<dynamic> articles}) {
//   final List<ArticleModel> articleModel = [];
//   for (var article in articles) {
//     article.add(ArticleModel(
//         image: article["urlToImage"],
//         headtitle: article["title"],
//         subtitle: article["content"]));
//   }
//   return articleModel;
// }
