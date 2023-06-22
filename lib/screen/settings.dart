import 'package:flutter/material.dart';

class FilterMeals extends StatelessWidget {
  const FilterMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const Center(
        child: Text("Settings"),
      ),
    );
  }
}