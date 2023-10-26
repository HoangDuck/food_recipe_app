
import 'package:food_recipe_app/features/home/presentation/providers/user_state/state/user_notifier.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/domain/models/users/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(0) int total,
    @Default(0) int page,
    @Default(UserConcreteState.initial) UserConcreteState state,
    @Default(false) bool hasData,
    @Default('') String message,
    @Default(false) bool isLoading,
    @Default(0) int selectIndex,
    User? user,
    @Default([]) List<Meals> listMeals,
  }) = _UserState;
}
