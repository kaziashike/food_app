import 'package:flutter/material.dart';
import 'package:food_app/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromARGB(255, 224, 224, 224),
        fontFamily: 'Raleway',
      ),
      home: const CategoryScreen(),
    );
  }
}
