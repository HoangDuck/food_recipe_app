
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/repositories/home_repository.dart';
import 'package:food_recipe_app/features/home/presentation/providers/recent_recipe_state/state/recent_recipe_state.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

enum RecentRecipeConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllProducts
}

class RecentRecipeNotifier extends StateNotifier<RecentRecipeState> {
  final HomeRepository homeRepository;
  RecentRecipeNotifier(this.homeRepository) : super(const RecentRecipeState());

  // bool get isFetching =>
  //     state.state != HomeConcreteState.loading &&
  //         state.state != HomeConcreteState.fetchingMore;

  Future<void> fetchMealsRecentRecipe() async {
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
    final response = await homeRepository.fetchMealsRecentRecipe();
    updateStateFromResponse(response);
  }

  void updateStateFromResponse(Either<AppException, List<Meals>> response) {
    response.fold((failure) {
      state = state.copyWith(
        // state: HomeConcreteState.failure,
        message: failure.message??'',
        isLoading: false,
      );
    }, (data) {
      final productList = data;

      final List<Meals> totalProducts = productList;

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