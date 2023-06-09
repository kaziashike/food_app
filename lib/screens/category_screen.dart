import 'package:flutter/material.dart';
import '../widgets/category_item.dart';

import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(14),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 20, crossAxisSpacing: 20, maxCrossAxisExtent: 200),
      children: DUMMY_CATEGORIES.map((e) {
        return CategoryItem(
          title: e.title,
          color: e.color,
          id: e.id,
        );
      }).toList(),
    );
  }
}
