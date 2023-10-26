
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/recipe_details/domain/repositories/meal_repository.dart';
import 'package:food_recipe_app/features/recipe_details/presentation/providers/recipe_detail_state/state/recipe_detail_state.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

enum RecipeDetailConcreteState {
  initial,
  loading,
  loaded,
  failure
}
class RecipeDetailNotifier extends StateNotifier<RecipeDetailState> {
  final MealRepository mealRepository;
  RecipeDetailNotifier(this.mealRepository) : super(const RecipeDetailState());

  bool get isFetching => state.state != RecipeDetailConcreteState.loading;

  Future<void> fetchRecipeDetailData({required String idMeal}) async {
    if (isFetching &&
        state.state != RecipeDetailConcreteState.loaded) {
      state = state.copyWith(
        state:RecipeDetailConcreteState.loading,
        isLoading: true,
      );

      final response = await mealRepository.fetchMealDetail(idMeal: idMeal);

      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: RecipeDetailConcreteState.loaded,
        message: 'No more data available',
        isLoading: false,
      );
    }

  }

  void updateStateFromResponse(Either<AppException, Meals> response) {
    response.fold((failure) {
      state = state.copyWith(
        state: RecipeDetailConcreteState.failure,
        message: failure.message??'',
        isLoading: false,
      );
    }, (data) {

      state = state.copyWith(
        state: RecipeDetailConcreteState.loaded,
        meal: data,
        hasData: true,
        message:  '',
        isLoading: false,
      );
    });
  }

}