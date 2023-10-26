
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';

abstract class MealDatasourceLocal {
  Future<Either<AppException, Meals>> fetchUserData();
}
