// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
enum HomeConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllProducts
}

class HomeState<T> extends Equatable {
  final List<T> productList;
  final int total;
  final int page;
  final bool hasData;
  final HomeConcreteState state;
  final String message;
  final bool isLoading;
  const HomeState({
    this.productList = const [],
    this.isLoading = false,
    this.hasData = false,
    this.state = HomeConcreteState.initial,
    this.message = '',
    this.page = 0,
    this.total = 0,
  });

  const HomeState.initial({
    this.productList = const [],
    this.total = 0,
    this.page = 0,
    this.isLoading = false,
    this.hasData = false,
    this.state = HomeConcreteState.initial,
    this.message = '',
  });

  HomeState copyWith<T>({
    List<T>? productList,
    int? total,
    int? page,
    bool? hasData,
    HomeConcreteState? state,
    String? message,
    bool? isLoading,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      productList: productList ?? this.productList,
      total: total ?? this.total,
      page: page ?? this.page,
      hasData: hasData ?? this.hasData,
      state: state ?? this.state,
      message: message ?? this.message,
    );
  }

  @override
  String toString() {
    return 'HomeState(isLoading:$isLoading, productLength: ${productList.length},total:$total page: $page, hasData: $hasData, state: $state, message: $message)';
  }

  @override
  List<Object?> get props => [productList, page, hasData, state, message];
}