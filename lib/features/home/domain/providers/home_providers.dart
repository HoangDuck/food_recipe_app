
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/data/datasource/home_remote_datasource.dart';
import 'package:food_recipe_app/features/home/data/repositories/home_repository.dart';
import 'package:food_recipe_app/features/home/domain/repositories/home_repository.dart';
import 'package:food_recipe_app/shared/data/remote/network_service.dart';
import 'package:food_recipe_app/shared/domain/providers/dio_network_provider.dart';

final homeDatasourceProvider = Provider.family<HomeDatasource, NetworkService>(
      (_, networkService) => HomeRemoteDatasource(networkService),
);

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  final networkService = ref.watch(netwokServiceProvider);
  final datasource = ref.watch(homeDatasourceProvider(networkService));
  final repository = HomeRepositoryImpl(datasource);
  return repository;
});