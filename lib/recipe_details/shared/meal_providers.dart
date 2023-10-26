
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/recipe_details/infrastructure/data/repositories/meal_repository.dart';
import 'package:food_recipe_app/recipe_details/infrastructure/meal_remote_datasource.dart';
import 'package:food_recipe_app/recipe_details/infrastructure/data/meal_repository.dart';
import 'package:food_recipe_app/core/infrastructure/remote/network_service.dart';
import 'package:food_recipe_app/core/shared/dio_network_provider.dart';

final mealDatasourceProvider = Provider.family<MealDatasource, NetworkService>(
      (_, networkService) => MealRemoteDataSource(networkService),
);

final mealRepositoryProvider = Provider<MealRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final datasource = ref.watch(mealDatasourceProvider(networkService));
  final repository = MealRepositoryImpl(datasource);
  return repository;
});