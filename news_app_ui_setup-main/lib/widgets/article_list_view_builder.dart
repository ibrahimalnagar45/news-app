import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/News_service.dart';
import 'article_list.dart';

class ArticleListViewBuilder extends StatefulWidget {
  const ArticleListViewBuilder({super.key,required this.cat});
  final String cat;
  @override
  State<ArticleListViewBuilder> createState() => _ArticleListViewBuilderState();
}

class _ArticleListViewBuilderState extends State<ArticleListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(category: widget.cat);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, Snapshot) {
        if (Snapshot.hasData) {
          return ArtilceListView(
            articles: Snapshot.data!,
          );
        } else if (Snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text(
                "Oops there is an error please try later",
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
// class  extends StatefulWidget {
//   const ArticleListzviewBuilder({
//     super.key,
//   });

//   @override
//   State<ArticleListzviewBuilder> createState() =>
//       _ArticleListzviewBuilderState();
// }

// class _ArticleListzviewBuilderState extends State<ArticleListzviewBuilder> {

//   bool isloading = true;
//   List<ArticleModel> articles = [];

//   @override
//   initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(dio: Dio()).getNews();
//     isloading = false;
//     setState(() {});
//   }

//  @override
//   Widget build(BuildContext context) {
//     return isloading== true
//         ?const  SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()),
//           )
//         : articles.isNotEmpty?  ArtilceListView(articles: articles,):
//       const  SliverToBoxAdapter(
//           child: Text("Oops there was an error try later "),
//         );
//   }
// }
