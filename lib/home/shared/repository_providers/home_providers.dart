
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/home/domain/repositories/repositories_impl/home_repository_impl.dart';
import 'package:food_recipe_app/home/domain/repositories/home_repository.dart';
import 'package:food_recipe_app/core/infrastructure/remote/network_service.dart';
import 'package:food_recipe_app/core/shared/dio_network_provider.dart';
import 'package:food_recipe_app/home/infrastructure/meal/home_remote_datasource.dart';

final homeDatasourceProvider = Provider.family<HomeDatasource, NetworkService>(
      (_, networkService) => HomeRemoteDatasource(networkService),
);

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final datasource = ref.watch(homeDatasourceProvider(networkService));
  final repository = HomeRepositoryImpl(datasource);
  return repository;
});