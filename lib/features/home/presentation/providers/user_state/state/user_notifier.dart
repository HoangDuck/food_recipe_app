
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/repositories/user_repository.dart';
import 'package:food_recipe_app/features/home/presentation/providers/user_state/state/user_state.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/domain/models/users/user.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

enum UserConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllData
}

class UserNotifier extends StateNotifier<UserState> {
  final UserRepository userRepository;
  UserNotifier(this.userRepository) : super(const UserState());

  bool get isFetching =>
      state.state != UserConcreteState.loading &&
          state.state != UserConcreteState.fetchingMore;

  Future<void> fetchUserData() async {
    if (isFetching &&
        state.state != UserConcreteState.fetchedAllData) {
      state = state.copyWith(
        state: state.page > 0
            ? UserConcreteState.fetchingMore
            : UserConcreteState.loading,
        isLoading: true,
      );

      final response = await userRepository.fetchUserData();

      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: UserConcreteState.fetchedAllData,
        message: 'No more data available',
        isLoading: false,
      );
    }

  }

  void updateStateFromResponse(Either<AppException, User> response) {
    response.fold((failure) {
      state = state.copyWith(
        state: UserConcreteState.failure,
        message: failure.message??'',
        isLoading: false,
      );
    }, (data) {
      final productList = data.meals;

      final List<Meals> totalProducts = productList;

      state = state.copyWith(
        state: UserConcreteState.fetchedAllData,
        user: data,
        listMeals: productList,
        hasData: true,
        message: totalProducts.isEmpty ? 'No videos found' : '',
        isLoading: false,
      );
    });
  }

}