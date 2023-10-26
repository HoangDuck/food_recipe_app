
import 'package:food_recipe_app/home/presentation/providers/category_state/state/category_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';


@Freezed(genericArgumentFactories: true)
class CategoryState<T> with _$CategoryState<T> {
  const factory CategoryState({
    @Default(0) int total,
    @Default(0) int page,
    @Default(CategoryConcreteState.initial) CategoryConcreteState state,
    @Default(false) bool hasData,
    @Default('') String message,
    @Default(false) bool isLoading,
    @Default(0) int selectIndex,
    @Default([]) List<T> listMealsByCategory,
  }) = _CategoryState<T>;

}