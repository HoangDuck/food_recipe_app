
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/shared/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/shared/exceptions/http_exception.dart';

abstract interface class NotificationRepository {
  Future<Either<AppException, List<Notifications>>> fetchNotifications({TypeNotification type = TypeNotification.all});
}