import 'package:flutter/material.dart';
import './screens/filter_screen.dart';
import './screens/tabs_screen.dart';
import './screens/category_screen.dart';
import './screens/meal_detail_screen.dart';

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
        canvasColor: const Color.fromARGB(255, 224, 224, 224),
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      home: const TabsScreen(),
      routes: {
        MealDetailScreen.routeName: (context) => const MealDetailScreen(),
        FilterScreen.routeName: (context) => const FilterScreen(),
        TabsScreen.routeName: (context) => const TabsScreen()
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => const CategoryScreen()),
    );
  }
}
