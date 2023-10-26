import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:food_recipe_app/app_configs.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/core/infrastructure/remote/mixins/exception_handler_mixin.dart';
import 'package:food_recipe_app/core/infrastructure/remote/network_service.dart';
import 'package:food_recipe_app/core/domain/models/response.dart' as response;
import 'package:food_recipe_app/core/globals.dart';
class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final Dio dio;
  DioNetworkService(this.dio) {
    // this throws error while running test
    // if (!kTestMode) {
    //
    // }
    dio.options = dioBaseOptions;
    if (kDebugMode) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }

  BaseOptions get dioBaseOptions => BaseOptions(
    baseUrl: baseUrl,
    headers: headers,
  );
  @override
  String get baseUrl => AppConfig.baseUrl;

  @override
  Map<String, Object> get headers => {
    'accept': 'application/json',
    'content-type': 'application/json',
  };

  // @override
  // Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
  //   final header = {...data, ...headers};
  //   if (!kTestMode) {
  //     dio.options.headers = header;
  //   }
  //   return header;
  // }

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