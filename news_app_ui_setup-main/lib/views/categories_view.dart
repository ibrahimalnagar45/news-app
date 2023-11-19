import 'package:flutter/material.dart';
import '../widgets/article_list_view_builder.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key, required this.cat});

  final String cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          ArticleListViewBuilder(
            cat: cat,
          )
        ],
      ),
    );
  }
}
