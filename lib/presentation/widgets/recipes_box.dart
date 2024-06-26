import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_recipe_app_getx/common/my_snacbar.dart';
import 'package:search_recipe_app_getx/controllers/local_db_controller.dart';
import 'package:search_recipe_app_getx/controllers/search_recipe_controller.dart';
import 'package:search_recipe_app_getx/data/models/recipe_model.dart';
import 'package:search_recipe_app_getx/presentation/screens/recipe_details_screen.dart';
import 'package:search_recipe_app_getx/presentation/widgets/image_dialog.dart';
import 'package:search_recipe_app_getx/presentation/widgets/recipe_circular_image.dart';
import 'package:search_recipe_app_getx/presentation/widgets/recipe_text_widget.dart';
import 'package:search_recipe_app_getx/utils/colors.dart';

class RecipeBox extends StatelessWidget {
  RecipeBox({super.key, required this.element});

  final dynamic element;
  final favoriteController = Get.put(LocalDBController());
  final searchController = Get.find<RecipeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        // recipe box is used at two different places
        // check if recipe box is being use in search screen
        onTap: element is Results
            ? () {
                // check if id for particular recipe is available or not
                if (element.id > 0) {
                  // navigate to RecipeDetailsScreen with recipe id
                  Get.to(() => RecipeDetailsScreen(
                        recipeId: element.id,
                      ));
                } else {
                  // if recipe id is not available then show snackBar to user
                  MySnackbar.showSnackbar("Recipe Details are not available");
                }
                //  if recipe box is being use in recipe details screen
              }
            : () {
                showImageDialog(context, element.image, element.summary);
              },
        child: Container(
          width: 250,
          height: 240,
          decoration: BoxDecoration(
              color: element is Results ? primaryColor : secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(40))),
          child: Column(
            children: [
              RecipeCircularImage(imageUrl: element.image),
              const SizedBox(
                height: 8,
              ),
              RecipeTextWidget(title: element.title), // recipe name
              const SizedBox(
                height: 8,
              ),
              // if recipe box is being use in search screen then on clicking the box
              // user will navigate to recipe details screen and in details screen it will
              // show the recipe image
              Text(
                element is Results
                    ? "Click to Check Recipe"
                    : "Click to View Image",
                style: const TextStyle(color: whiteColor),
              ),
              const SizedBox(
                height: 4,
              ),
              InkWell(
                onTap: () async {
                  if (favoriteController.favoriteRecipes.any((recipe) => recipe
                      .results!
                      .any((result) => result.id == element.id))) {
                    favoriteController.removeFavoriteRecipe(element.id);
                  } else {
                    favoriteController.saveFavoriteRecipe(
                        searchController.recipes.value!, element.id);
                  }
                },
                child: Obx(
                  () => Icon(
                    Icons.favorite,
                    color: favoriteController.favoriteRecipes.any((recipe) =>
                            recipe.results!
                                .any((result) => result.id == element.id))
                        ? element is Results
                            ? secondaryColor
                            : primaryColor
                        : whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
