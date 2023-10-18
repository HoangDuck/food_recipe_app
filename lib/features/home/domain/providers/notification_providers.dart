
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/data/datasource/meal/home_remote_datasource.dart';
import 'package:food_recipe_app/features/home/data/datasource/notification/notification_local_datasource.dart';
import 'package:food_recipe_app/features/home/data/datasource/notification/notification_remote_datasource.dart';
import 'package:food_recipe_app/features/home/data/repositories/notification_repository.dart';
import 'package:food_recipe_app/features/home/domain/repositories/notification_repository.dart';
import 'package:food_recipe_app/shared/data/remote/network_service.dart';
import 'package:food_recipe_app/shared/domain/providers/dio_network_provider.dart';

final notificationDatasourceProvider = Provider.family<NotificationDatasource, NetworkService>(
      (_, networkService) => NotificationRemoteDataSource(networkService),
);

final notificationDatasourceLocalProvider = Provider.family<NotificationDatasourceLocal, void>(
      (_,voidValue) => NotificationLocalDataSource(),
);

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  final networkService = ref.watch(netwokServiceProvider);
  final datasource = ref.watch(notificationDatasourceProvider(networkService));
  final datasourceLocal = ref.watch(notificationDatasourceLocalProvider(1));
  final repository = NotificationRepositoryImpl(datasource,datasourceLocal);
  return repository;
});