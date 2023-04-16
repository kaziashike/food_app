import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filter';
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Text('meow'),
    );
  }
}
