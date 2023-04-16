import 'package:flutter/material.dart';
import 'package:food_app/screens/category_screen.dart';
import 'package:food_app/screens/filter_screen.dart';
import 'package:food_app/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(String s, IconData icon, Function tapHandler) {
      return ListTile(
        onTap: tapHandler(),
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          s,
          style: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      );
    }

    ;
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Cooking Up',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.pink),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
          }),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }),
        ],
      ),
    );
  }
}
