class MealByCategoryModel {
  MealByCategoryModel({
    required this.meals,
  });
  late final List<Meals> meals;

  MealByCategoryModel.fromJson(Map<String, dynamic> json){
    meals = List.from(json['meals']).map((e)=>Meals.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['meals'] = meals.map((e)=>e.toJson()).toList();
    return data;
  }
}

class Meals {
  Meals({
    this.strMeal,
    this.strMealThumb,
    this.idMeal,
  });
  late final String? strMeal;
  late final String? strMealThumb;
  late final String? idMeal;

  Meals.fromJson(Map<String, dynamic> json){
    strMeal = json['strMeal'];
    strMealThumb = json['strMealThumb'];
    idMeal = json['idMeal'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['strMeal'] = strMeal;
    data['strMealThumb'] = strMealThumb;
    data['idMeal'] = idMeal;
    return data;
  }
}