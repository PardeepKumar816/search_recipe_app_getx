import 'package:flutter/material.dart';
import 'package:search_recipe_app_getx/data/models/recipe_details_model.dart';
import 'package:search_recipe_app_getx/presentation/widgets/steps_list.dart';

class StepsColumn extends StatelessWidget {
  const StepsColumn({
    super.key,
    required this.model,
  });

  final RecipeDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // if instruction list is not empty then show instructions
      if (model.analyzedInstructions!.isNotEmpty)
        ...model.analyzedInstructions!
            .map((instructions) =>
        instructions.steps!.isNotEmpty
        // if steps list is not empty then show steps
                ? instructions.steps!.map((step) => StepsList(step: step)).toList()
        // if steps list is empty then show Steps are not available text
                : [const Center(child: Text("Steps are not available"))])
            .expand((widgetList) => widgetList)
            .toList(),
      // if instruction list is empty then show Instruction not available text
      if (model.analyzedInstructions!.isEmpty)
        const Center(child: Text("Instruction not available"))
    ]);
  }
}
