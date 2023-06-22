import 'package:flutter/material.dart';
import '../model/meal_data.dart';
import '../model/meal.dart';

class MealListScreen extends StatelessWidget {
  final String id;
  final String title;
  MealListScreen(this.id, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final List<Meal> availableMeals = dummyMeals.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: availableMeals.map((meal) {
            return MealItem(meal);
          }).toList(),
        ),
      ),
    );
  }
}

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(10),
      // ),
      // elevation: 4,
      // child: Card(
      //   margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                meal.imageUrl,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.favorite_border),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                    child: Center(
                      child: Text(
                        meal.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              // ListTile(
              //   leading: Icon(Icons.timer),
              //   title: Text(meal.duration.toString()),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
