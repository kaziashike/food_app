import 'package:flutter/material.dart';
import 'package:food_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  const CategoryItem(
      {super.key, required this.title, required this.color, required this.id});
  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          CategoryMealsScreen(categoryID: id, categoryTitle: title),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.red,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [color.withOpacity(0.7), color]),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
        ),
      ),
    );
  }
}
