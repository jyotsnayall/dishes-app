import 'package:flutter/material.dart';
import '../model/meal_data.dart';
import '../model/meal.dart';
import 'meal_detail_screen.dart';

class MealListScreen extends StatelessWidget {
  final String id;
  final String title;
  late List<Meal> categoryMeals;

  MealListScreen(this.id, this.title, {super.key}) {
    categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(id);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: categoryMeals.map((meal) {
            return MealItem(meal);
          }).toList(),
        ),
      ),
    );
  }
}

class MealItem extends StatefulWidget {
  final Meal meal;
  const MealItem(this.meal, {super.key});

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  String get getComplexity {
    switch (widget.meal.complexity) {
      case Complexity.challenging:
        return "Challenging";
      case Complexity.hard:
        return "Hard";
      case Complexity.simple:
        return "Simple";
    }
  }

  String get getAffordability {
    switch (widget.meal.affordability) {
      case Affordability.affordable:
        return "Affordable";
      case Affordability.luxurious:
        return "Luxurious";
      case Affordability.pricey:
        return "Pricey";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MealDetailScreen(
              id: widget.meal.id,
              imageUrl: widget.meal.imageUrl,
              ingredients: widget.meal.ingredients,
              title: widget.meal.title,
              steps: widget.meal.steps,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 10,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    widget.meal.imageUrl,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                    child: Text(
                      widget.meal.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: true,
                      // overflow: TextOverflow.clip,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      Text(" ${widget.meal.duration} min"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      Text(" ${getComplexity}"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.price_change_outlined),
                      Text(" ${getAffordability}"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
