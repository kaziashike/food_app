import 'package:flutter/material.dart';
import 'package:food_app/dummy_data.dart';

import 'category_Item.dart';

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
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 20),
        children: DUMMY_CATEGORIES
            .map((e) => Category_Item(title: e.title, color: e.color))
            .toList(),
      ),
    );
  }
}
