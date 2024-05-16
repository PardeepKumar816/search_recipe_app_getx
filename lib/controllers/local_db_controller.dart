import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:search_recipe_app_getx/data/models/recipe_model.dart';

class LocalDBController extends GetxController {
  late final Box<dynamic> _favoritesBox;
  RxList<RecipeModel> favoriteRecipes = <RecipeModel>[].obs;

  @override
  Future<void> onInit() async {
    _favoritesBox = await Hive.openBox('favorites');
    favoriteRecipes.value = await getFavoriteRecipes();
    super.onInit();
  }

  void saveFavoriteRecipe(RecipeModel recipe, int selectedId) async {
    RecipeModel modifiedRecipe = RecipeModel.fromJson(recipe.toJson());
    modifiedRecipe.results = modifiedRecipe.results!
        .where((element) => element.id == selectedId)
        .toList();
    await _favoritesBox.add(modifiedRecipe);
    favoriteRecipes.add(modifiedRecipe);
  }

  Future<void> removeFavoriteRecipe(int recipeId) async {
    final List<RecipeModel> recipes =
        _favoritesBox.values.cast<RecipeModel>().toList();
    int index = recipes.indexWhere(
        (element) => element.results!.any((element) => element.id == recipeId));

    if (index != -1) {
      await _favoritesBox.deleteAt(index);
      favoriteRecipes.removeAt(index);
    }
  }

  Future<void> removeAllFavoriteRecipes() async {
    await _favoritesBox.clear();
    favoriteRecipes.clear();
  }

  Future<List<RecipeModel>> getFavoriteRecipes() async {
    final List<dynamic> values = _favoritesBox.values.toList();
    final List<RecipeModel> recipes = values
        .map((dynamic value) =>
            RecipeModel.fromJson(Map<String, dynamic>.from(value.toJson())))
        .toList();
    return recipes;
  }
}
