import 'package:equatable/equatable.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';

enum RecentRecipeConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllProducts
}


class RecentRecipeState extends Equatable {
  final int total;
  final int page;
  final bool hasData;
  final String message;
  final bool isLoading;
  final int selectIndex;
  final List<Meals> listMealsByCategory;

  const RecentRecipeState({
    this.isLoading = false,
    this.hasData = false,
    this.message = '',
    this.page = 0,
    this.total = 0,
    this.selectIndex = 0,
    this.listMealsByCategory = const [],
  });

  const RecentRecipeState.initial({
    this.listMealsByCategory = const [],
    this.total = 0,
    this.page = 0,
    this.isLoading = false,
    this.hasData = false,
    this.message = '',
    this.selectIndex = 0,
  });

  RecentRecipeState copyWith({
    List<Meals>? listMealsByCategory,
    int? total,
    int? page,
    bool? hasData,
    String? message,
    bool? isLoading,
    int? selectIndex,
  }) {
    return RecentRecipeState(
      isLoading: isLoading ?? this.isLoading,
      total: total ?? this.total,
      page: page ?? this.page,
      hasData: hasData ?? this.hasData,
      message: message ?? this.message,
      selectIndex: selectIndex ?? this.selectIndex,
      listMealsByCategory: listMealsByCategory ?? this.listMealsByCategory,
    );
  }

  @override
  String toString() {
    return 'CategoryState(isLoading:$isLoading, total:$total page: $page, hasData: $hasData, message: $message)';
  }

  @override
  List<Object?> get props => [ page, hasData, message, selectIndex, listMealsByCategory];
}