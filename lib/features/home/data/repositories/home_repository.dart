
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/features/home/data/datasource/meal/home_remote_datasource.dart';
import 'package:food_recipe_app/features/home/domain/repositories/home_repository.dart';
import 'package:food_recipe_app/shared/domain/models/categories/categories.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories.dart' as meal_by_category;

class HomeRepositoryImpl implements HomeRepository {
  final HomeDatasource homeDatasource;
  HomeRepositoryImpl(this.homeDatasource);


  @override
  Future<Either<AppException, List<Meals>>> searchMeals({required String query}) {
    // TODO: implement searchMeals
    return homeDatasource.searchMeals(query: query);
  }

  @override
  Future<Either<AppException, List<Meals>>> fetchTrendingMeals() {
    // TODO: implement fetchTrendingMeals
    return homeDatasource.fetchTrendingMeals();
  }

  @override
  Future<Either<AppException, List<Categories>>> fetchAllCategories() {
    // TODO: implement fetchAllCategories
    return homeDatasource.fetchAllCategories();
  }

  @override
  Future<Either<AppException, List<meal_by_category.Meals>>> fetchMealsByCategory({String category = ''}) {
    // TODO: implement fetchMealsByCategory
    return homeDatasource.fetchMealByCategories(category: category);
  }

  @override
  Future<Either<AppException, List<Meals>>> fetchMealsRecentRecipe() {
    // TODO: implement fetchMealsRecentRecipe
    return homeDatasource.fetchMealsRecentRecipe();
  }

}