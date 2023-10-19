
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/shared/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

abstract interface class MealRepository {
  Future<Either<AppException, Meals>> fetchMealDetail({required String idMeal});
  Future<Either<AppException, List<Ingredients>>> fetchMealDetailIngredient({required String idMeal});
}