import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';
import 'categories_screen.dart';
import 'favourites_screen.dart';

class TabScreen extends StatefulWidget {
  static const routeName = "HomeScreen";
  // final List<Meal> dummyMeals;
  // final List<Meal> favouriteMeals;
  // const TabScreen(this.dummyMeals, this.favouriteMeals, {super.key});
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int currentIndex = 0;
  List<Map<String, dynamic>> pages = [
    {
      "page": const CategoriesScreen(),
      "title": "Categories",
    },
    {
      "page": const FavouritesScreen(),
      "title": "Favourites",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[currentIndex]["title"]),
        // leading: Icon(Icons.menu),
      ),
      body: pages[currentIndex]["page"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: "Favourites",
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
