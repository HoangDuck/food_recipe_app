
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/features/recipe_details/data/datasource/meal_remote_datasource.dart';
import 'package:food_recipe_app/features/recipe_details/domain/repositories/meal_repository.dart';
import 'package:food_recipe_app/shared/domain/models/ingredients/ingredients.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

class MealRepositoryImpl implements MealRepository{
  final MealDatasource mealDatasource;
  MealRepositoryImpl(this.mealDatasource);

  @override
  Future<Either<AppException, Meals>> fetchMealDetail({required String idMeal}) {
    // TODO: implement fetchMealDetail
    return mealDatasource.fetchMealDetail(idMeal: idMeal);
  }

  @override
  Future<Either<AppException, List<Ingredients>>> fetchMealDetailIngredient({required String idMeal}) {
    // TODO: implement fetchMealDetailIngredient
    return mealDatasource.fetchMealDetailIngredient(idMeal: idMeal);
  }


}