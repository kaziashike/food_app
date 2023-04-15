import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryID;
  final String categoryTitle;

  const CategoryMealsScreen(
      {super.key, required this.categoryID, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final filter = DUMMY_MEALS.where((e) {
      return e.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
              mealId: filter[i].id,
              imageURL: filter[i].imageUrl,
              title: filter[i].title,
              duration: filter[i].duration,
              complexity: filter[i].complexity,
              affordability: filter[i].affordability);
        },
        itemCount: filter.length,
      ),
    );
  }
}
