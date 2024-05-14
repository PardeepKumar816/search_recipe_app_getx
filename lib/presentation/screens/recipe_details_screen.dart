import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_recipe_app_getx/controllers/recipe_details_controller.dart';
import 'package:search_recipe_app_getx/presentation/widgets/error_text.dart';
import 'package:search_recipe_app_getx/presentation/widgets/loading_indicator.dart';
import 'package:search_recipe_app_getx/presentation/widgets/recipe_details_bloc_provider.dart';
import 'package:search_recipe_app_getx/utils/colors.dart';

// here stateful widget is used only for initState
class RecipeDetailsScreen extends StatefulWidget {
  final int recipeId;

  const RecipeDetailsScreen({super.key, required this.recipeId});

  @override
  _RecipeDetailsScreenState createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  final recipeDetailsController = Get.put(RecipeDetailsController());

  @override
  void initState() {
    super.initState();
    // Fetch recipe details when the screen is initialized
    recipeDetailsController.getRecipeDetails(widget.recipeId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Obx(() => recipeDetailsController.isLoading.value
            ? const LoadingIndicator()
            : recipeDetailsController.recipeDetails.value != null
                ? RecipeDetailsBuilder(
                    model: recipeDetailsController.recipeDetails.value!)
                : const ErrorText(
                    message: "No Details Available",
                  )),
      ),
    );
  }
}
