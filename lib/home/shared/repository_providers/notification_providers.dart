
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/home/domain/repositories/notification_repository.dart';
import 'package:food_recipe_app/core/infrastructure/remote/network_service.dart';
import 'package:food_recipe_app/core/shared/dio_network_provider.dart';
import 'package:food_recipe_app/home/domain/repositories/repositories_impl/notification_repository.dart';
import 'package:food_recipe_app/home/infrastructure/notification/notification_local_datasource.dart';
import 'package:food_recipe_app/home/infrastructure/notification/notification_remote_datasource.dart';

final notificationDatasourceProvider = Provider.family<NotificationDatasource, NetworkService>(
      (_, networkService) => NotificationRemoteDataSource(networkService),
);

final notificationDatasourceLocalProvider = Provider.family<NotificationDatasourceLocal, void>(
      (_,voidValue) => NotificationLocalDataSource(),
);

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  final networkService = ref.watch(networkServiceProvider);
  final datasource = ref.watch(notificationDatasourceProvider(networkService));
  final datasourceLocal = ref.watch(notificationDatasourceLocalProvider(1));
  final repository = NotificationRepositoryImpl(datasource,datasourceLocal);
  return repository;
});