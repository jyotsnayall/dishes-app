import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FilterMeals extends StatefulWidget {
  // final Map<Filter, bool> currentFilters;

  const FilterMeals({
    super.key,
    // required this.currentFilters,
  });

  @override
  State<FilterMeals> createState() => _FilterMealsState();
}

class _FilterMealsState extends State<FilterMeals> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
  //   _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
  //   _vegetarianFilterSet = widget.currentFilters[Filter.vegetarian]!;
  //   _veganFilterSet = widget.currentFilters[Filter.vegan]!;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoseFree: _lactoseFreeFilterSet,
            Filter.vegetarian: _vegetarianFilterSet,
            Filter.vegan: _veganFilterSet,
          });
          return false;
        },
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Adjust your meal selection',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SwitchListTile(
                  value: _glutenFreeFilterSet,
                  onChanged: (isChecked) {
                    setState(() {
                      _glutenFreeFilterSet = isChecked;
                    });
                  },
                  title: Text("Glutten - free"),
                  subtitle: Text("Only include glutten free"),
                ),
                SwitchListTile(
                  value: _veganFilterSet,
                  onChanged: (isChecked) {
                    setState(() {
                      _veganFilterSet = isChecked;
                    });
                  },
                  title: Text("Vegan"),
                  subtitle: Text("Only include vegan"),
                ),
                SwitchListTile(
                  value: _vegetarianFilterSet,
                  onChanged: (isChecked) {
                    setState(() {
                      _vegetarianFilterSet = isChecked;
                    });
                  },
                  title: Text("Vegetarian"),
                  subtitle: Text("Only include vegetarian"),
                ),
                SwitchListTile(
                  value: _lactoseFreeFilterSet,
                  onChanged: (isChecked) {
                    setState(() {
                      _lactoseFreeFilterSet = isChecked;
                    });
                  },
                  title: Text("Lactose - free"),
                  subtitle: Text("Only include lactose free"),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
