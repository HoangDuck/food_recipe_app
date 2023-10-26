
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/domain/models/response.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';


abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

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