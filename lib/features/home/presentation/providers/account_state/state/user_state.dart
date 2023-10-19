
import 'package:equatable/equatable.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/domain/models/users/user.dart';

enum UserConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllData
}

class UserState extends Equatable {
  final int total;
  final int page;
  final UserConcreteState state;
  final bool hasData;
  final String message;
  final bool isLoading;
  final int selectIndex;
  final User? user;
  final List<Meals> listMeals;

  const UserState({
    this.isLoading = false,
    this.hasData = false,
    this.state = UserConcreteState.initial,
    this.message = '',
    this.page = 0,
    this.total = 0,
    this.selectIndex = 0,
    this.user,
    this.listMeals = const [],
  });

  const UserState.initial({
    this.listMeals = const [],
    this.total = 0,
    this.page = 0,
    this.state = UserConcreteState.initial,
    this.isLoading = false,
    this.user,
    this.hasData = false,
    this.message = '',
    this.selectIndex = 0,
  });

  UserState copyWith({
    List<Meals>? listMeals,
    int? total,
    int? page,
    bool? hasData,
    UserConcreteState? state,
    String? message,
    bool? isLoading,
    User? user,
    int? selectIndex,
  }) {
    return UserState(
      isLoading: isLoading ?? this.isLoading,
      total: total ?? this.total,
      page: page ?? this.page,
      state: state ?? this.state,
      hasData: hasData ?? this.hasData,
      message: message ?? this.message,
      selectIndex: selectIndex ?? this.selectIndex,
      listMeals: listMeals ?? this.listMeals,
      user: user ?? this.user,
    );
  }

  @override
  String toString() {
    return 'CategoryState(isLoading:$isLoading, total:$total page: $page, hasData: $hasData, message: $message)';
  }

  @override
  List<Object?> get props => [ page, hasData, message,state, selectIndex, listMeals,user];
}