import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';

import 'dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 20, crossAxisSpacing: 20, maxCrossAxisExtent: 200),
        children: DUMMY_CATEGORIES.map((e) {
          return CategoryItem(title: e.title, color: e.color);
        }).toList(),
      ),
    );
  }
}
