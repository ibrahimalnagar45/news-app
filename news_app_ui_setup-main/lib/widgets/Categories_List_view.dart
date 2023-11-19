import 'package:flutter/material.dart';
import '../models/Category_model.dart';
import 'categories_widget.dart';

class CatListView extends StatelessWidget {
  const CatListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: "assets/business.avif",
      title: " Business",
    ),
    CategoryModel(
      image: "assets/entertaiment.avif",
      title: "Entertainment",
    ),
    CategoryModel(
      image: "assets/health.avif",
      title: "Health",
    ),
    CategoryModel(
      image: "assets/science.avif",
      title: "Science",
    ),
    CategoryModel(
      image: "assets/sports.avif",
      title: "Sports",
    ),
    CategoryModel(
      image: "assets/technology.jpeg",
      title: "Technology",
    ),
    CategoryModel(
      image: "assets/general.avif",
      title: "General",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              cat: categories[index].title,
              categoryModel: categories[index],
            );
          },
        ),
      ),
    );
  }
}
