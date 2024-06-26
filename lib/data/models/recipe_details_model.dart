// if any value from api is null then default value will be assigned
// based on data type e.g "", 0, [], {}

class RecipeDetailsModel {
  RecipeDetailsModel({
     this.vegetarian,
     this.vegan,
    this.glutenFree,
     this.dairyFree,
     this.veryHealthy,
     this.cheap,
     this.veryPopular,
     this.sustainable,
    this.lowFodmap,
    this.weightWatcherSmartPoints,
     this.gaps,
     this.preparationMinutes,
     this.cookingMinutes,
     this.aggregateLikes,
     this.healthScore,
     this.creditsText,
     this.sourceName,
     this.pricePerServing,
     this.extendedIngredients,
     this.id,
     this.title,
     this.readyInMinutes,
     this.servings,
   this.sourceUrl,
     this.image,
     this.imageType,
     this.nutrition,
     this.summary,
    this.cuisines,
    this.dishTypes,
    this.diets,
     this.occasions,
     this.winePairing,
     this.instructions,
     this.analyzedInstructions,
    this.originalId,
    this.spoonacularScore,
    this.spoonacularSourceUrl,
  });
   bool? vegetarian;
   bool? vegan;
   bool? glutenFree;
   bool? dairyFree;
   bool? veryHealthy;
   bool? cheap;
   bool? veryPopular;
   bool? sustainable;
   bool? lowFodmap;
   int? weightWatcherSmartPoints;
   String? gaps;
   int? preparationMinutes;
   int? cookingMinutes;
   int? aggregateLikes;
   int? healthScore;
   String? creditsText;
  String? sourceName;
   double? pricePerServing;
   List<ExtendedIngredients>? extendedIngredients;
   int? id;
   String? title;
   int? readyInMinutes;
   int? servings;
  String? sourceUrl;
   String? image;
   String? imageType;
   Nutrition? nutrition;
   String? summary;
   List<dynamic>? cuisines;
  List<String>? dishTypes;
   List<dynamic>? diets;
   List<dynamic>? occasions;
   WinePairing? winePairing;
  String? instructions;
   List<AnalyzedInstructions>? analyzedInstructions;
   dynamic originalId;
   double? spoonacularScore;
   String? spoonacularSourceUrl;

  

  RecipeDetailsModel.fromJson(Map<String, dynamic> json){
    vegetarian = json['vegetarian'] ?? false;
    vegan = json['vegan'] ?? false;
    glutenFree = json['glutenFree'] ?? false;
    dairyFree = json['dairyFree'] ?? false;
    veryHealthy = json['veryHealthy'] ?? false;
    cheap = json['cheap'] ?? false;
    veryPopular = json['veryPopular'] ?? false;
    sustainable = json['sustainable'] ?? false;
    lowFodmap = json['lowFodmap'] ?? false;
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'] ?? 0;
    gaps = json['gaps'] ?? "";
    preparationMinutes = json['preparationMinutes'] ?? 0;
    cookingMinutes = json['cookingMinutes'] ?? 0;
    aggregateLikes = json['aggregateLikes'] ?? 0;
    healthScore = json['healthScore'] ?? 0;
    creditsText = json['creditsText'] ?? "";
    sourceName = json['sourceName'] ?? "";
    pricePerServing = json['pricePerServing'] ?? 0;
    extendedIngredients = List.from(json['extendedIngredients'] ?? []).map((e)=>ExtendedIngredients.fromJson(e)).toList();
    id = json['id'] ?? 0;
    title = json['title'] ?? "";
    readyInMinutes = json['readyInMinutes'] ?? 0;
    servings = json['servings'] ?? 0;
    sourceUrl = json['sourceUrl'] ?? "";
    image = json['image'] ?? "";
    imageType = json['imageType'] ?? "";
    nutrition = Nutrition.fromJson(json['nutrition']??{});
    summary = json['summary'] ?? "";
    cuisines = List.castFrom<dynamic, dynamic>(json['cuisines'] ?? []);
    dishTypes = List.castFrom<dynamic, String>(json['dishTypes'] ?? []);
    diets = List.castFrom<dynamic, dynamic>(json['diets'] ?? []);
    occasions = List.castFrom<dynamic, dynamic>(json['occasions'] ?? []);
    winePairing = WinePairing.fromJson(json['winePairing'] ?? {});
    instructions = json['instructions'] ?? "";
    analyzedInstructions = List.from(json['analyzedInstructions'] ?? []).map((e)=>AnalyzedInstructions.fromJson(e)).toList();
    originalId = null;
    spoonacularScore = json['spoonacularScore'] ?? 0;
    spoonacularSourceUrl = json['spoonacularSourceUrl'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['vegetarian'] = vegetarian;
    data['vegan'] = vegan;
    data['glutenFree'] = glutenFree;
    data['dairyFree'] = dairyFree;
    data['veryHealthy'] = veryHealthy;
    data['cheap'] = cheap;
    data['veryPopular'] = veryPopular;
    data['sustainable'] = sustainable;
    data['lowFodmap'] = lowFodmap;
    data['weightWatcherSmartPoints'] = weightWatcherSmartPoints;
    data['gaps'] = gaps;
    data['preparationMinutes'] = preparationMinutes;
    data['cookingMinutes'] = cookingMinutes;
    data['aggregateLikes'] = aggregateLikes;
    data['healthScore'] = healthScore;
    data['creditsText'] = creditsText;
    data['sourceName'] = sourceName;
    data['pricePerServing'] = pricePerServing;
    data['extendedIngredients'] = extendedIngredients!.map((e)=>e.toJson()).toList();
    data['id'] = id;
    data['title'] = title;
    data['readyInMinutes'] = readyInMinutes;
    data['servings'] = servings;
    data['sourceUrl'] = sourceUrl;
    data['image'] = image;
    data['imageType'] = imageType;
    data['nutrition'] = nutrition!.toJson();
    data['summary'] = summary;
    data['cuisines'] = cuisines;
    data['dishTypes'] = dishTypes;
    data['diets'] = diets;
    data['occasions'] = occasions;
    data['winePairing'] = winePairing!.toJson();
    data['instructions'] = instructions;
    data['analyzedInstructions'] = analyzedInstructions!.map((e)=>e.toJson()).toList();
    data['originalId'] = originalId;
    data['spoonacularScore'] = spoonacularScore;
    data['spoonacularSourceUrl'] = spoonacularSourceUrl;
    return data;
  }
}

class ExtendedIngredients {
  ExtendedIngredients({
    required this.id,
    required this.aisle,
    required this.image,
    required this.consistency,
    required this.name,
    required this.nameClean,
    required this.original,
    required this.originalName,
    required this.amount,
    required this.unit,
    required this.meta,
    required this.measures,
  });
   int? id;
   String? aisle;
   String? image;
   String? consistency;
   String? name;
   String? nameClean;
   String? original;
   String? originalName;
   double? amount;
   String? unit;
   List<String>? meta;
   Measures? measures;

  ExtendedIngredients.fromJson(Map<String, dynamic> json){
    id = json['id']??0;
    aisle = json['aisle']??"";
    image = json['image']??"";
    consistency = json['consistency']??"";
    name = json['name']??"";
    nameClean = json['nameClean']??"";
    original = json['original']??"";
    originalName = json['originalName']??"";
    amount = json['amount']??0;
    unit = json['unit']??0;
    meta = List<String>.from(json['meta']??[]);
    measures = Measures.fromJson(json['measures']??{});
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['aisle'] = aisle;
    data['image'] = image;
    data['consistency'] = consistency;
    data['name'] = name;
    data['nameClean'] = nameClean;
    data['original'] = original;
    data['originalName'] = originalName;
    data['amount'] = amount;
    data['unit'] = unit;
    data['meta'] = meta;
    data['measures'] = measures!.toJson();
    return data;
  }
}

class Measures {
  Measures({
    required this.us,
    required this.metric,
  });
   Us? us;
   Metric? metric;

  Measures.fromJson(Map<String, dynamic> json){
    us = Us.fromJson(json['us']??{});
    metric = Metric.fromJson(json['metric']??{});
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['us'] = us!.toJson();
    data['metric'] = metric!.toJson();
    return data;
  }
}

class Us {
  Us({
    required this.amount,
    required this.unitShort,
    required this.unitLong,
  });
  double? amount;
   String? unitShort;
   String? unitLong;

  Us.fromJson(Map<String, dynamic> json){
    amount = json['amount']??0;
    unitShort = json['unitShort']??"";
    unitLong = json['unitLong']??"";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['amount'] = amount;
    data['unitShort'] = unitShort;
    data['unitLong'] = unitLong;
    return data;
  }
}

class Metric {
  Metric({
    required this.amount,
    required this.unitShort,
    required this.unitLong,
  });
   double? amount;
   String? unitShort;
   String? unitLong;

  Metric.fromJson(Map<String, dynamic> json){
    amount = json['amount']??0;
    unitShort = json['unitShort']??"";
    unitLong = json['unitLong']??"";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['amount'] = amount;
    data['unitShort'] = unitShort;
    data['unitLong'] = unitLong;
    return data;
  }
}

class Nutrition {
  Nutrition({
    required this.nutrients,
    required this.properties,
    required this.flavonoids,
    required this.ingredients,
    required this.caloricBreakdown,
    required this.weightPerServing,
  });
   List<Nutrients>? nutrients;
   List<Properties>? properties;
   List<Flavonoids>? flavonoids;
   List<Ingredients>? ingredients;
   CaloricBreakdown? caloricBreakdown;
   WeightPerServing? weightPerServing;

  Nutrition.fromJson(Map<String, dynamic> json){
    nutrients = List.from(json['nutrients'] ?? []).map((e)=>Nutrients.fromJson(e)).toList();
    properties = List.from(json['properties'] ?? []).map((e)=>Properties.fromJson(e)).toList();
    flavonoids = List.from(json['flavonoids'] ?? []).map((e)=>Flavonoids.fromJson(e)).toList();
    ingredients = List.from(json['ingredients'] ?? []).map((e)=>Ingredients.fromJson(e)).toList();
    caloricBreakdown = CaloricBreakdown.fromJson(json['caloricBreakdown'] ?? {});
    weightPerServing = WeightPerServing.fromJson(json['weightPerServing'] ?? {});
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nutrients'] = nutrients!.map((e)=>e.toJson()).toList();
    data['properties'] = properties!.map((e)=>e.toJson()).toList();
    data['flavonoids'] = flavonoids!.map((e)=>e.toJson()).toList();
    data['ingredients'] = ingredients!.map((e)=>e.toJson()).toList();
    data['caloricBreakdown'] = caloricBreakdown!.toJson();
    data['weightPerServing'] = weightPerServing!.toJson();
    return data;
  }
}

class Nutrients {
  Nutrients({
    required this.name,
    required this.amount,
    required this.unit,
    required this.percentOfDailyNeeds,
  });
   String? name;
   double? amount;
   String? unit;
   double? percentOfDailyNeeds;

  Nutrients.fromJson(Map<String, dynamic> json){
    name = json['name'] ?? "";
    amount = json['amount'] ?? 0.0;
    unit = json['unit'] ?? "";
    percentOfDailyNeeds = json['percentOfDailyNeeds'] ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['amount'] = amount;
    data['unit'] = unit;
    data['percentOfDailyNeeds'] = percentOfDailyNeeds;
    return data;
  }
}

class Properties {
  Properties({
    required this.name,
    required this.amount,
    required this.unit,
  });
   String? name;
   double? amount;
   String? unit;

  Properties.fromJson(Map<String, dynamic> json){
    name = json['name']??"";
    amount = json['amount']??0;
    unit = json['unit']??"";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['amount'] = amount;
    data['unit'] = unit;
    return data;
  }
}

class Flavonoids {
  Flavonoids({
    required this.name,
    required this.amount,
    required this.unit,
  });
   String? name;
   double? amount;
   String? unit;

  Flavonoids.fromJson(Map<String, dynamic> json){
    name = json['name']??"";
    amount = json['amount']??0;
    unit = json['unit']??"";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['amount'] = amount;
    data['unit'] = unit;
    return data;
  }
}

class Ingredients {
  Ingredients({
    required this.id,
    required this.name,
    required this.amount,
    required this.unit,
    required this.nutrients,
  });
   int? id;
   String? name;
  double? amount;
   String? unit;
  List<Nutrients>? nutrients;

  Ingredients.fromJson(Map<String, dynamic> json){
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    amount = json['amount'] ?? 0.0;
    unit = json['unit'] ?? "";
    nutrients = List.from(json['nutrients']??[]).map((e)=>Nutrients.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['amount'] = amount;
    data['unit'] = unit;
    data['nutrients'] = nutrients!.map((e)=>e.toJson()).toList();
    return data;
  }
}

class CaloricBreakdown {
  CaloricBreakdown({
    required this.percentProtein,
    required this.percentFat,
    required this.percentCarbs,
  });
   double? percentProtein;
   double? percentFat;
   double? percentCarbs;

  CaloricBreakdown.fromJson(Map<String, dynamic> json){
    percentProtein = json['percentProtein'] ?? 0;
    percentFat = json['percentFat'] ?? 0;
    percentCarbs = json['percentCarbs'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['percentProtein'] = percentProtein;
    data['percentFat'] = percentFat;
    data['percentCarbs'] = percentCarbs;
    return data;
  }
}

class WeightPerServing {
  WeightPerServing({
    required this.amount,
    required this.unit,
  });
  int? amount;
   String? unit;

  WeightPerServing.fromJson(Map<String, dynamic> json){
    amount = json['amount'] ?? 0;
    unit = json['unit'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['amount'] = amount;
    data['unit'] = unit;
    return data;
  }
}

class WinePairing {
  WinePairing({
    required this.pairedWines,
    required this.pairingText,
    required this.productMatches,
  });
   List<dynamic>? pairedWines;
   String? pairingText;
   List<dynamic>? productMatches;

  WinePairing.fromJson(Map<String, dynamic> json){
    pairedWines = List.castFrom<dynamic, dynamic>(json['pairedWines'] ?? []);
    pairingText = json['pairingText'] ?? "";
    productMatches = List.castFrom<dynamic, dynamic>(json['productMatches'] ?? []);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['pairedWines'] = pairedWines;
    data['pairingText'] = pairingText;
    data['productMatches'] = productMatches;
    return data;
  }
}

class AnalyzedInstructions {
  AnalyzedInstructions({
    required this.name,
    required this.steps,
  });
   String? name;
   List<Steps>? steps;

  AnalyzedInstructions.fromJson(Map<String, dynamic> json){
    name = json['name'] ?? "";
    steps = List.from(json['steps']??[]).map((e)=>Steps.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['steps'] = steps!.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Steps {
  Steps({
    required this.number,
    required this.step,
    required this.ingredients,
    required this.equipment,
  });
   int? number;
   String? step;
   List<Ingredients>? ingredients;
   List<Equipment>? equipment;

  Steps.fromJson(Map<String, dynamic> json){
    number = json['number'] ?? 0;
    step = json['step'] ?? "";
    ingredients = List.from(json['ingredients']??[]).map((e)=>Ingredients.fromJson(e)).toList();
    equipment = List.from(json['equipment']??[]).map((e)=>Equipment.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['number'] = number;
    data['step'] = step;
    data['ingredients'] = ingredients!.map((e)=>e.toJson()).toList();
    data['equipment'] = equipment!.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Equipment {
  Equipment({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.image,
  });
   int? id;
   String? name;
   String? localizedName;
   String? image;

  Equipment.fromJson(Map<String, dynamic> json){
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    localizedName = json['localizedName'] ?? "";
    image = json['image'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id ;
    data['name'] = name;
    data['localizedName'] = localizedName;
    data['image'] = image;
    return data;
  }
}