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
    final selectedMeal = dummyMeals.firstWhere((meal) => meal.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text("${selectedMeal.title}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              selectedMeal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Ingredients",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            for (final ingredient in selectedMeal.ingredients)
              Text(
                ingredient,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            const SizedBox(height: 20),
            Text(
              'Steps',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            for (var i = 0; i < selectedMeal.steps.length; i++)
              ListTile(
                leading: Text(
                  '${i + 1}.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                title: Text(
                  selectedMeal.steps[i],
                  textAlign: TextAlign.left,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
