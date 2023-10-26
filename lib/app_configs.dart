import 'package:dio/dio.dart';

class AppConfig {
  static String baseUrl = 'https://www.themealdb.com/api/json/v1/1';
  static String randomImageUrl = 'https://i.pravatar.cc/300';
  static Options optionHeader = Options(
    headers: {
      'accept': 'application/json',
      'content-type': 'application/json',
    },
  );
  static Map<String,String> baseHeader = {
    'accept': 'application/json',
    'content-type': 'application/json',
  };
}