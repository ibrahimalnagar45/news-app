import 'package:flutter/material.dart';
import '../widgets/Categories_List_view.dart';
import '../widgets/article_list_view_builder.dart';

//import '../widgets/categories_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
   
   
      body:const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: CatListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 12,
          ),
        ),
        ArticleListViewBuilder(cat: "general"),
      ]),
    );
  }
}
