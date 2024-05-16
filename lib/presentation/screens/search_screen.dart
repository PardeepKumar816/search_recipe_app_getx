import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:search_recipe_app_getx/controllers/search_recipe_controller.dart';
import 'package:search_recipe_app_getx/presentation/screens/favorite_recipes_screen.dart';
import 'package:search_recipe_app_getx/presentation/widgets/heading_widget.dart';
import 'package:search_recipe_app_getx/presentation/widgets/search_box.dart';
import 'package:search_recipe_app_getx/presentation/widgets/search_recipe_bloc_builder_widget.dart';
import 'package:search_recipe_app_getx/utils/colors.dart';
import 'package:search_recipe_app_getx/utils/helper_functions.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final searchController = Get.put(RecipeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(secondaryColor),
                            foregroundColor:
                                MaterialStatePropertyAll(whiteColor)),
                        onPressed: () {
                          Get.to(() => FavoriteRecipesScreen());
                        },
                        child: const Text("Favorite Recipes"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const HeadingWidget(), // heading text
                      const SizedBox(
                        height: 48,
                      ),
                      // textField for searching recipes
                      SearchBox(),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: getDeviceSize(context).width,
                    height: getDeviceSize(context).height / 2,
                    color: whiteColor,
                    // show list of recipes from api
                    child: SearchRecipeBuilderWidget(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
