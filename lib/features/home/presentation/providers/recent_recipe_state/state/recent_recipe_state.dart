import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_recipe_state.freezed.dart';

@freezed
class RecentRecipeState with _$RecentRecipeState {
  const factory RecentRecipeState({
    @Default(0) int total,
    @Default(0) int page,
    @Default(false) bool hasData,
    @Default('') String message,
    @Default(false) bool isLoading,
    @Default(0) int selectIndex,
    @Default([]) List<Meals> listMealsByCategory,
  }) = _RecentRecipeState;
}
