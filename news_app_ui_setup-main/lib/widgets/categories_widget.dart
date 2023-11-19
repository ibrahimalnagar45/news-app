import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/Category_model.dart';

import '../views/categories_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.categoryModel, required this.cat});
  final String cat;
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        image: DecorationImage(
            image: AssetImage(categoryModel.image), fit: BoxFit.fill),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return CategoriesView(
                cat: categoryModel.title,
              );
            },
          ));
        },
        child: Center(
          child: Text(
            categoryModel.title,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
