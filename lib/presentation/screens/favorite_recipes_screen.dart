import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_recipe_app_getx/common/my_snacbar.dart';
import 'package:search_recipe_app_getx/controllers/local_db_controller.dart';
import 'package:search_recipe_app_getx/presentation/screens/recipe_details_screen.dart';
import 'package:search_recipe_app_getx/presentation/widgets/image_dialog.dart';
import 'package:search_recipe_app_getx/utils/colors.dart';

class FavoriteRecipesScreen extends StatelessWidget {
  FavoriteRecipesScreen({super.key});

  final favoriteController = Get.put<LocalDBController>(LocalDBController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
        ),
        body: Obx(
          () => favoriteController.favoriteRecipes.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: ListView.builder(
                    itemCount: favoriteController.favoriteRecipes.length,
                    itemBuilder: ((context, index) {
                      final element =
                          favoriteController.favoriteRecipes[index].results![0];
                      return Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: ListTile(
                            onTap: () {
                              // check if id for particular recipe is available or not
                              if (element.id != null && element.id! > 0) {
                                // navigate to RecipeDetailsScreen with recipe id
                                Get.to(() => RecipeDetailsScreen(
                                      recipeId: element.id!,
                                    ));
                              } else {
                                // if recipe id is not available then show snackBar to user
                                MySnackbar.showSnackbar(
                                    "Recipe Details are not available");
                              }
                            },
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            tileColor: secondaryColor,
                            leading: element.image != null &&
                                    element.image!.isNotEmpty
                                ? InkWell(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(32)),
                                    onTap: () {
                                      showImageDialog(
                                          context, element.image!, "");
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 6, bottom: 6),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: whiteColor,
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            element.image!,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            title: Text(
                              element.title!, // recipe name
                              style: const TextStyle(
                                  color: whiteColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                            ),
                            trailing: InkWell(
                              onTap: () async {
                                await favoriteController
                                    .removeFavoriteRecipe(element.id!);
                              },
                              child: const Icon(
                                Icons.delete,
                                color: whiteColor,
                              ),
                            ),
                          ));
                    }),
                  ),
                )
              : const Center(
                  child: Text(
                    "No Favorite Recipes Available",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
        ));
  }
}
