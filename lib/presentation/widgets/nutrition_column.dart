import 'package:flutter/material.dart';
import 'package:search_recipe_app_getx/data/models/recipe_details_model.dart';
import 'nutrition_list.dart';

class NutritionColumn extends StatelessWidget {
  const NutritionColumn({
    super.key,
    required this.model,
  });

  final RecipeDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          // if nutrition list is not empty then show nutrition list
          if(model.nutrition!.nutrients!.isNotEmpty)
          ...model.nutrition!.nutrients!.map((nutrient) {
            return NutritionList(nutrient: nutrient,);
          }).toList(),
          // if nutrition list is empty then show Nutrition facts are not available
          if(model.nutrition!.nutrients!.isEmpty)
            const Center(child: Text("Nutrition facts are not available"),)
        ]
    );
  }
}