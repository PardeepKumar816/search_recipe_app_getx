import 'package:hive_flutter/hive_flutter.dart';

import 'recipe_model.dart';

class RecipeModelAdapter extends TypeAdapter<RecipeModel> {
  @override
  final int typeId = 0;

  @override
  RecipeModel read(BinaryReader reader) {
    final dynamic map = reader.readMap();
    // Cast the dynamic map to Map<String, dynamic>
    final Map<String, dynamic> castedMap = Map<String, dynamic>.from(map);
    return RecipeModel.fromJson(castedMap);
  }

  @override
  void write(BinaryWriter writer, RecipeModel obj) {
    writer.writeMap(obj.toJson());
  }
}

class ResultsAdapter extends TypeAdapter<Results> {
  @override
  final int typeId = 1;

  @override
  Results read(BinaryReader reader) {
    final map = reader.readMap() as Map<String, dynamic>;
    return Results.fromJson(map);
  }

  @override
  void write(BinaryWriter writer, Results obj) {
    writer.writeMap(obj.toJson());
  }
}
