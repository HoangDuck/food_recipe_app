import 'package:food_recipe_app/shared/domain/models/ingredients/ingredients.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'ingredient_list.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'ingredient_list.g.dart';

@freezed
class IngredientsList with _$IngredientsList {
  const factory IngredientsList({
    required List<Ingredients> ingredients,
  }) = _IngredientsList;

  factory IngredientsList.fromJson(Map<String, Object?> json)
      => _$IngredientsListFromJson(json);
}