
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/domain/models/response.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';


abstract class NetworkService {
  Future<Either<AppException, Response>> get(
      String endpoint, {
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header
      });

  Future<Either<AppException, Response>> post(
      String endpoint, {
        Map<String, dynamic>? data,
        Map<String, String>? header
      });
}