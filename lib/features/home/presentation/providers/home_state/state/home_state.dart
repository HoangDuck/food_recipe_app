// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_recipe_app/features/home/presentation/providers/home_state/state/home_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState({
    @Default([]) List<T> productList,
    @Default(0) int total,
    @Default(0) int page,
    @Default(false) bool hasData,
    @Default(HomeConcreteState.initial) HomeConcreteState state,
    @Default('') String message,
    @Default(false) bool isLoading,
  }) = _HomeState;
}
