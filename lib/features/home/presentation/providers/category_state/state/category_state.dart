
import 'package:equatable/equatable.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories/meals.dart' as meal_by_category;

class CategoryState extends Equatable {
  final int total;
  final int page;
  final bool hasData;
  final String message;
  final bool isLoading;
  final int selectIndex;
  final List<meal_by_category.Meals> listMealsByCategory;

  const CategoryState({
    this.isLoading = false,
    this.hasData = false,
    this.message = '',
    this.page = 0,
    this.total = 0,
    this.selectIndex = 0,
    this.listMealsByCategory = const [],
  });

  const CategoryState.initial({
    this.listMealsByCategory = const [],
    this.total = 0,
    this.page = 0,
    this.isLoading = false,
    this.hasData = false,
    this.message = '',
    this.selectIndex = 0,
  });

  CategoryState copyWith({
    List<meal_by_category.Meals>? listMealsByCategory,
    int? total,
    int? page,
    bool? hasData,
    String? message,
    bool? isLoading,
    int? selectIndex,
  }) {
    return CategoryState(
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