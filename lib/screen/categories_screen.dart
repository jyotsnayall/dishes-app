import 'package:flutter/material.dart';
import '../widget/category_item.dart';
import '../model/meal_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      scrollDirection: Axis.vertical,
      children: categoryList.map((category) {
        return CategoryItem(
          category.id,
          category.title,
          category.color,
        );
      }).toList(),
    );
  }
}
