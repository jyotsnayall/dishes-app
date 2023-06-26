import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';

class FilterMeals extends StatelessWidget {
  const FilterMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Glutten - free"),
            subtitle: Text("Only include glutten free"),
          ),
          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Vegan"),
            subtitle: Text("Only include vegan"),
          ),
          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Vegetarian"),
            subtitle: Text("Only include vegetarian"),
          ),
          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text("Lactose - free"),
            subtitle: Text("Only include lactose free"),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
