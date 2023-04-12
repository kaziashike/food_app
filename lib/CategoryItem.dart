import 'package:flutter/material.dart';

class Category_Item extends StatelessWidget {
  final String title;
  final Color color;
  const Category_Item({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [color.withOpacity(0.7), color]),
          borderRadius: BorderRadius.circular(15)),
      child: Text(title),
    );
  }
}
