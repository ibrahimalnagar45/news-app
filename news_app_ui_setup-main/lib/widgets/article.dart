import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
// import '../services/News_service.dart';

class Article extends StatelessWidget {
  const Article({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: article.image == null
                ? Image.asset("assets/OIP.jpeg")
                : Image.network(article.image!),
          ),
          Text(
            article.headtitle,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            article.subtitle == null ? " " : article.subtitle!,
            style: const TextStyle(
              color: Color.fromARGB(255, 126, 126, 126),
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () async {
  if (await article.canLaunchUrl()) {
    article.launchUrl();
  } else {
    print("Could not launch ${article.url}");
      }},
                                        child: Text(
              article.url,
              style: const TextStyle(color: Colors.blue, fontSize: 15),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ), 
          ),
        ],
      ),
    );
  }
}
