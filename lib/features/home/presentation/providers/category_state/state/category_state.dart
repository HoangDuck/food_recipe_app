
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories/meals.dart' as meal_by_category;
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories/meals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(0) int total,
    @Default(0) int page,
    @Default(false) bool hasData,
    @Default('') String message,
    @Default(false) bool isLoading,
    @Default(0) int selectIndex,
    @Default([]) List<meal_by_category.Meals> listMealsByCategory,
  }) = _CategoryState;
}