// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:food_recipe_app/home/presentation/providers/trending_now_state/state/trending_now_notifier.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_now_state.freezed.dart';

@freezed
class TrendingNowState with _$TrendingNowState {
  const factory TrendingNowState({
    @Default([]) List<Meals> productList,
    @Default(0) int total,
    @Default(0) int page,
    @Default(false) bool hasData,
    @Default(TrendingNowConcreteState.initial) TrendingNowConcreteState state,
    @Default('') String message,
    @Default(false) bool isLoading,
  }) = _TrendingNowState;
}
