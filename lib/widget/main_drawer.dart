import 'package:flutter/material.dart';

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
                  color: Theme.of(context).primaryColor,
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
              print("meal");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 30),
            title: Text(
              "Settings",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {
              print("settings");
            },
          ),
        ],
      ),
    );
  }
}
