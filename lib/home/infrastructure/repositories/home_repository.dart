
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/domain/models/categories/category_list/categories.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/domain/models/categories/meal_by_categories/meals.dart' as meal_by_category;
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';

abstract interface class HomeRepository {
  Future<Either<AppException, List<Meals>>> fetchTrendingMeals();
  Future<Either<AppException, List<Meals>>> fetchMealsRecentRecipe();
  Future<Either<AppException, List<Categories>>> fetchAllCategories();
  Future<Either<AppException, List<Meals>>> searchMeals({required String query});
  Future<Either<AppException, List<meal_by_category.Meals>>> fetchMealsByCategory({String category = ''});
}