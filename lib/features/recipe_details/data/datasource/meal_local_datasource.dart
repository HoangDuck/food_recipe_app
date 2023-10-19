
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

abstract class MealDatasourceLocal {
  Future<Either<AppException, Meals>> fetchUserData();
}
