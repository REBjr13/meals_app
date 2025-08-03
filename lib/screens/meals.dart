import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => Text(meals[index].title),
    );

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Nothing Here...'),
            SizedBox(height: 18),
            Text(
              'Try something else',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
