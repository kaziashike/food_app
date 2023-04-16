import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../screens/category_screen.dart';
import '../screens/favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs_screen';
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _tabWidget = [
    const CategoryScreen(),
    const FavouriteScreen()
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
        ),
        body: _tabWidget[_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedPageIndex,
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black38,
          onTap: _selectPage,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.category),
                label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite')
          ],
        ),
        drawer: const MainDrawer());
  }
}
