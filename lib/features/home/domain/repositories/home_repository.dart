
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/shared/domain/models/categories/categories.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';
import 'package:food_recipe_app/shared/domain/models/categories/meal_by_categories.dart' as meal_by_category;

abstract interface class HomeRepository {
  Future<Either<AppException, List<Meals>>> fetchTrendingMeals();
  Future<Either<AppException, List<Meals>>> fetchMealsRecentRecipe();
  Future<Either<AppException, List<Categories>>> fetchAllCategories();
  Future<Either<AppException, List<Meals>>> searchMeals({required String query});
  Future<Either<AppException, List<meal_by_category.Meals>>> fetchMealsByCategory({String category = ''});
}