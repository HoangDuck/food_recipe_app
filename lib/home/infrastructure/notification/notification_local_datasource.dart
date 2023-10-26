
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';

abstract class NotificationDatasourceLocal {
  Future<Either<AppException, List<Notifications>>> fetchNotifications({TypeNotification type = TypeNotification.all});
}

class NotificationLocalDataSource extends NotificationDatasourceLocal{

  static List<Notifications> listMockNotification = [
    Notifications(
      idNotification: '1',
      title: 'New recipe!',
      body: 'Far far away, behind the word mountains, far from the countries.',
      time: 'Today',
      isToday: true,
    ),
    Notifications(
      idNotification: '2',
      title: 'Don’t forget to try your saved recipe',
      body: 'Far far away, behind the word mountains, far from the countries.',
      time: 'Today',
      isToday: true,
    ),
    Notifications(
      idNotification: '3',
      title: 'Don’t forget to try your saved recipe',
      body: 'Far far away, behind the word mountains, far from the countries.',
      time: 'Yesterday',
      isToday: false,
    )
  ];

  @override
  Future<Either<AppException, List<Notifications>>> fetchNotifications({TypeNotification type = TypeNotification.all}) async {
    return Right(listMockNotification);
  }

}