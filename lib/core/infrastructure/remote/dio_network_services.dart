import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:food_recipe_app/app_configs.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/core/infrastructure/remote/mixins/exception_handler_mixin.dart';
import 'package:food_recipe_app/core/infrastructure/remote/network_service.dart';
import 'package:food_recipe_app/core/domain/models/response.dart' as response;
class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final Dio dio;
  DioNetworkService(this.dio) {
    dio.options = dioBaseOptions;
  }

  BaseOptions get dioBaseOptions => BaseOptions(
    baseUrl: AppConfig.baseUrl,
    headers: AppConfig.baseHeader,
  );

  @override
  Future<Either<AppException, response.Response>> post(String endpoint,
      {Map<String, dynamic>? data, Map<String, String>? header}) {
    final res = handleException(
          () => dio.post(
        endpoint,
        options: Options(
          headers: header,
        ),
        data: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, response.Response>> get(String endpoint,
      {Map<String, dynamic>? queryParameters, Map<String, String>? header}) {
    final res = handleException(
          () => dio.get(
        endpoint,
            options: Options(
              headers: header,
            ),
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }
}