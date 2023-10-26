import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/home/application/category_state/state/category_state.dart';
import 'package:food_recipe_app/home/domain/repositories/home_repository.dart';
import 'package:food_recipe_app/core/domain/models/categories/category_list/categories.dart';
import 'package:food_recipe_app/core/domain/models/categories/meal_by_categories/meals.dart';

enum CategoryConcreteState {
  initial,
  loading,
  loaded,
  failure
}

class CategoryNotifier<T> extends StateNotifier<CategoryState<T>> {
  final HomeRepository homeRepository;
  CategoryNotifier(this.homeRepository) : super(const CategoryState());

  bool get isFetching =>
      state.state != CategoryConcreteState.loading;

  Future<void> fetchMealsByCategory({String category = ''}) async {
    if (isFetching &&
        state.state != CategoryConcreteState.loaded) {
      state = state.copyWith(
        state: CategoryConcreteState.loading,
        isLoading: true,
      );
      final response = await homeRepository.fetchMealsByCategory(category: category);
      updateStateFromResponse<Meals>(response);
    } else {
      state = state.copyWith(
        state: CategoryConcreteState.loaded,
        message: 'No more meals available',
        isLoading: false,
      );
    }
  }

  Future<void> fetchPopularCategory() async {
    if (isFetching &&
        state.state != CategoryConcreteState.loaded) {
      state = state.copyWith(
        state: CategoryConcreteState.loading,
        isLoading: true,
      );
      final response = await homeRepository.fetchAllCategories();
      updateStateFromResponse<Categories>(response);
    } else {
      state = state.copyWith(
        state: CategoryConcreteState.loaded,
        message: 'No more category available',
        isLoading: false,
      );
    }
  }

  void updateStateFromResponse<U>(Either<AppException, List<U>> response) {
    response.fold((failure) {
      state = state.copyWith(
        message: failure.message??'',
        isLoading: false,
      );
    }, (data) {
      final totalProducts = data;
      state = CategoryState(
        listMealsByCategory: totalProducts as List<T>,
          hasData: true,
          message: totalProducts.isEmpty ? 'No products found' : '',
          isLoading: false,
      );
    });
  }

}