import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/repositories/home_repository.dart';
import 'package:food_recipe_app/features/home/presentation/providers/category_state/state/category_state.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories/meals.dart' as meal_by_category;
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

class CategoryNotifier extends StateNotifier<CategoryState> {
  final HomeRepository homeRepository;
  CategoryNotifier(this.homeRepository) : super(const CategoryState());

  // bool get isFetching =>
  //     state.state != HomeConcreteState.loading &&
  //         state.state != HomeConcreteState.fetchingMore;

  Future<void> fetchMealsByCategory({String category = ''}) async {
    // if (isFetching &&
    //     state.state != HomeConcreteState.fetchedAllProducts) {
    //   state = state.copyWith(
    //     state: state.page > 0
    //         ? HomeConcreteState.fetchingMore
    //         : HomeConcreteState.loading,
    //     isLoading: true,
    //   );
    //
    //   final response = await homeRepository.fetchTrendingMeals();
    //
    //   updateStateFromResponse<Meals>(response);
    // } else {
    //   state = state.copyWith(
    //     state: HomeConcreteState.fetchedAllProducts,
    //     message: 'No more meals available',
    //     isLoading: false,
    //   );
    // }
      final response = await homeRepository.fetchMealsByCategory(category: category);
      updateStateFromResponse(response);
  }

  void updateStateFromResponse(Either<AppException, List<meal_by_category.Meals>> response) {
    response.fold((failure) {
      state = state.copyWith(
        // state: HomeConcreteState.failure,
        message: failure.message??'',
        isLoading: false,
      );
    }, (data) {
      final productList = data;

      final List<meal_by_category.Meals> totalProducts = productList;

      state = state.copyWith(
        // productList: totalProducts,
        // state: totalProducts.length == data.length
        //     ? HomeConcreteState.fetchedAllProducts
        //     : HomeConcreteState.loaded,
        listMealsByCategory: totalProducts,
        hasData: true,
        message: totalProducts.isEmpty ? 'No products found' : '',
        isLoading: false,
      );
    });
  }

}