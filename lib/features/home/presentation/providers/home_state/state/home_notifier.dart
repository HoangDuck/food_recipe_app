import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/repositories/home_repository.dart';
import 'package:food_recipe_app/features/home/presentation/providers/home_state/state/home_state.dart';
import 'package:food_recipe_app/shared/domain/models/categories/category_list/categories.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final HomeRepository homeRepository;

  HomeNotifier(
      this.homeRepository,
      ) : super(const HomeState.initial());

  bool get isFetching =>
      state.state != HomeConcreteState.loading &&
          state.state != HomeConcreteState.fetchingMore;

  Future<void> fetchTrendingProducts() async {
    if (isFetching &&
        state.state != HomeConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0
            ? HomeConcreteState.fetchingMore
            : HomeConcreteState.loading,
        isLoading: true,
      );

      final response = await homeRepository.fetchTrendingMeals();

      updateStateFromResponse<Meals>(response);
    } else {
      state = state.copyWith(
        state: HomeConcreteState.fetchedAllProducts,
        message: 'No more meals available',
        isLoading: false,
      );
    }
  }

  Future<void> searchProducts(String query) async {
    if (isFetching &&
        state.state != HomeConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0
            ? HomeConcreteState.fetchingMore
            : HomeConcreteState.loading,
        isLoading: true,
      );

      final response = await homeRepository.searchMeals(
        query: query,
      );

      updateStateFromResponse<Meals>(response);
    } else {
      state = state.copyWith(
        state: HomeConcreteState.fetchedAllProducts,
        message: 'No more products available',
        isLoading: false,
      );
    }
  }

  void updateStateFromResponse<T>(Either<AppException, List<T>> response) {
    response.fold((failure) {
      state = state.copyWith(
        state: HomeConcreteState.failure,
        message: failure.message,
        isLoading: false,
      );
    }, (data) {
      final productList = data;

      final List<T> totalProducts = [...state.productList, ...productList];

      state = state.copyWith<T>(
        productList: totalProducts,
        state: totalProducts.length == data.length
            ? HomeConcreteState.fetchedAllProducts
            : HomeConcreteState.loaded,
        hasData: true,
        message: totalProducts.isEmpty ? 'No products found' : '',
        isLoading: false,
      );
    });
  }

  Future<void> fetchPopularCategory() async {
    if (isFetching &&
        state.state != HomeConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0
            ? HomeConcreteState.fetchingMore
            : HomeConcreteState.loading,
        isLoading: true,
      );

      final response = await homeRepository.fetchAllCategories();

      updateStateFromResponse<Categories>(response);
    } else {
      state = state.copyWith(
        state: HomeConcreteState.fetchedAllProducts,
        message: 'No more category available',
        isLoading: false,
      );
    }
  }

  void resetState() {
    state = const HomeState.initial();
  }
}