import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/features/home/data/datasource/notification/notification_local_datasource.dart';
import 'package:food_recipe_app/features/home/data/datasource/notification/notification_remote_datasource.dart';
import 'package:food_recipe_app/features/home/domain/repositories/notification_repository.dart';
import 'package:food_recipe_app/core/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

class NotificationRepositoryImpl implements NotificationRepository{
  final NotificationDatasource notificationDatasource;
  final NotificationDatasourceLocal notificationDatasourceLocal;
  NotificationRepositoryImpl(this.notificationDatasource,this.notificationDatasourceLocal);
  @override
  Future<Either<AppException, List<Notifications>>> fetchNotifications({TypeNotification type = TypeNotification.all}) {
    return notificationDatasourceLocal.fetchNotifications(type: type);
  }

}