import 'package:flutter/material.dart';
import '../screen/settings_screen.dart';
import '../screen/tab_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Theme.of(context).colorScheme.secondary,
            child: Center(
              child: Text(
                "Menu",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  // color: Theme.of(context).primaryColor,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant, size: 30),
            title: Text(
              "Meal",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => TabScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 30),
            title: Text(
              "Settings",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {
               Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => FilterMeals(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
