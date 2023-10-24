
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/recipe_details/data/datasource/meal_remote_datasource.dart';
import 'package:food_recipe_app/features/recipe_details/data/repositories/meal_repository.dart';
import 'package:food_recipe_app/features/recipe_details/domain/repositories/meal_repository.dart';
import 'package:food_recipe_app/shared/data/remote/network_service.dart';
import 'package:food_recipe_app/shared/domain/providers/dio_network_provider.dart';

final mealDatasourceProvider = Provider.family<MealDatasource, NetworkService>(
      (_, networkService) => MealRemoteDataSource(networkService),
);

final mealRepositoryProvider = Provider<MealRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final datasource = ref.watch(mealDatasourceProvider(networkService));
  final repository = MealRepositoryImpl(datasource);
  return repository;
});