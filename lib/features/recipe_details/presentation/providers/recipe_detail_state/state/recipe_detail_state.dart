
import 'package:equatable/equatable.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';

enum RecipeDetailConcreteState {
  initial,
  loading,
  loaded,
  failure
}

class RecipeDetailState extends Equatable {
  final RecipeDetailConcreteState state;
  final bool hasData;
  final String message;
  final bool isLoading;
  final Meals? meal;

  const RecipeDetailState({
    this.isLoading = false,
    this.hasData = false,
    this.state = RecipeDetailConcreteState.initial,
    this.message = '',
    this.meal,
  });

  const RecipeDetailState.initial({
    this.state = RecipeDetailConcreteState.initial,
    this.isLoading = false,
    this.meal,
    this.hasData = false,
    this.message = '',
  });

  RecipeDetailState copyWith({
    int? total,
    int? page,
    bool? hasData,
    RecipeDetailConcreteState? state,
    String? message,
    bool? isLoading,
    Meals? meal,
    int? selectIndex,
  }) {
    return RecipeDetailState(
      isLoading: isLoading ?? this.isLoading,
      state: state ?? this.state,
      hasData: hasData ?? this.hasData,
      message: message ?? this.message,
      meal: meal ?? this.meal,
    );
  }

  @override
  String toString() {
    return 'CategoryState(isLoading:$isLoading, hasData: $hasData, message: $message)';
  }

  @override
  List<Object?> get props => [ hasData, message,state];
}