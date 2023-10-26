import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/home/application/trending_now_state/state/trending_now_state.dart';
import 'package:food_recipe_app/home/infrastructure/repositories/home_repository.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';

enum TrendingNowConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllProducts
}

class TrendingNowNotifier extends StateNotifier<TrendingNowState> {
  final HomeRepository homeRepository;

  TrendingNowNotifier(
      this.homeRepository,
      ) : super(const TrendingNowState());

  bool get isFetching =>
      state.state != TrendingNowConcreteState.loading &&
          state.state != TrendingNowConcreteState.fetchingMore;

  Future<void> fetchTrendingProducts() async {
    if (isFetching &&
        state.state != TrendingNowConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0
            ? TrendingNowConcreteState.fetchingMore
            : TrendingNowConcreteState.loading,
        isLoading: true,
      );

      final response = await homeRepository.fetchTrendingMeals();

      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: TrendingNowConcreteState.fetchedAllProducts,
        message: 'No more meals available',
        isLoading: false,
      );
    }
  }

  Future<void> searchProducts(String query) async {
    if (isFetching &&
        state.state != TrendingNowConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0
            ? TrendingNowConcreteState.fetchingMore
            : TrendingNowConcreteState.loading,
        isLoading: true,
      );

      final response = await homeRepository.searchMeals(
        query: query,
      );

      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: TrendingNowConcreteState.fetchedAllProducts,
        message: 'No more products available',
        isLoading: false,
      );
    }
  }

  void updateStateFromResponse(Either<AppException, List<Meals>> response) {
    response.fold((failure) {
      state = state.copyWith(
        state: TrendingNowConcreteState.failure,
        message: failure.message??'',
        isLoading: false,
      );
    }, (data) {
      final productList = data;

      final List<Meals> totalProducts = [...state.productList, ...productList];

      state = state.copyWith(
        productList: totalProducts,
        state: totalProducts.length == data.length
            ? TrendingNowConcreteState.fetchedAllProducts
            : TrendingNowConcreteState.loaded,
        hasData: true,
        message: totalProducts.isEmpty ? 'No products found' : '',
        isLoading: false,
      );
    });
  }

  Future<void> fetchPopularCategory() async {
    if (isFetching &&
        state.state != TrendingNowConcreteState.fetchedAllProducts) {
      state = state.copyWith(
        state: state.page > 0
            ? TrendingNowConcreteState.fetchingMore
            : TrendingNowConcreteState.loading,
        isLoading: true,
      );

      // final response = await homeRepository.fetchAllCategories();

      // updateStateFromResponse<Categories>(response);
    } else {
      state = state.copyWith(
        state: TrendingNowConcreteState.fetchedAllProducts,
        message: 'No more category available',
        isLoading: false,
      );
    }
  }

  void resetState() {
    state = const TrendingNowState();
  }
}