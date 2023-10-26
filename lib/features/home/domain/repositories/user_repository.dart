
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/domain/models/users/user.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

abstract interface class UserRepository {
  Future<Either<AppException, User>> fetchUserData();
}