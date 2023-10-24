
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/data/datasource/user/user_local_datasource.dart';
import 'package:food_recipe_app/features/home/data/datasource/user/user_remote_datasource.dart';
import 'package:food_recipe_app/features/home/data/repositories/user_repository.dart';
import 'package:food_recipe_app/features/home/domain/repositories/user_repository.dart';
import 'package:food_recipe_app/shared/data/remote/network_service.dart';
import 'package:food_recipe_app/shared/domain/providers/dio_network_provider.dart';

final userDatasourceProvider = Provider.family<UserDatasource, NetworkService>(
      (_, networkService) => UserRemoteDataSource(networkService),
);

final userDatasourceLocalProvider = Provider.family<UserDatasourceLocal, void>(
      (_,voidValue) => UserLocalDataSource(),
);

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final datasource = ref.watch(userDatasourceProvider(networkService));
  final datasourceLocal = ref.watch(userDatasourceLocalProvider(1));
  final repository = UserRepositoryImpl(datasource,datasourceLocal);
  return repository;
});