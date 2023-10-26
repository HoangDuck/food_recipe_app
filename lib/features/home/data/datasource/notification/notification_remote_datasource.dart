
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/infrastructure/remote/network_service.dart';
import 'package:food_recipe_app/core/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

abstract class NotificationDatasource {
  Future<Either<AppException, List<Notifications>>> fetchNotifications({TypeNotification type = TypeNotification.all});
}

class NotificationRemoteDataSource extends NotificationDatasource{
  final NetworkService networkService;
  NotificationRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, List<Notifications>>> fetchNotifications({TypeNotification type = TypeNotification.all}) {
    // TODO: implement fetchNotifications
    throw UnimplementedError();
  }

}