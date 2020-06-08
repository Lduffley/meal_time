import 'package:flutter/material.dart';
import 'dummy_dart.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES.map((categoryData) => CategoryItem(categoryData.title, categoryData.color)).toList()
      ,gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200, childAspectRatio: 1.5, crossAxisSpacing: 20, mainAxisSpacing: 20),
    );
  }
}