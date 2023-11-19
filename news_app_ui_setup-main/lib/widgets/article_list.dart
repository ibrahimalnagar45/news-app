import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/article.dart';
import '../models/article_model.dart';

class ArtilceListView extends StatelessWidget {
  const ArtilceListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Article(
          article: articles[index],
        );
      },
    ));

    // ListView.builder(
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     itemCount: tileitem.length,
    //     itemBuilder: (context, index) {
    //       return CategoryTile(
    //         tileitem: tileitem[index],
    //       );
    //     });
  }
}
