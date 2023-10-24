
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/shared/data/remote/dio_network_services.dart';

final networkServiceProvider = Provider<DioNetworkService>(
      (ref) {
    final Dio dio = Dio();
    return DioNetworkService(dio);
  },
);