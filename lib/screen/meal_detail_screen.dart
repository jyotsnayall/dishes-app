import 'package:flutter/material.dart';
import '../model/meal_data.dart';

class MealDetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final String id;

  const MealDetailScreen({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [],
        ));
  }
}
