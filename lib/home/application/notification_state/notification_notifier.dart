
import 'package:dartz/dartz.dart';
import 'package:food_recipe_app/core/infrastructure/remote/exceptions/http_exception.dart';
import 'package:food_recipe_app/home/application/notification_state/state/notification_state.dart';
import 'package:food_recipe_app/home/infrastructure/repositories/notification_repository.dart';
import 'package:food_recipe_app/core/domain/models/notifications/notifications.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum NotificationConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllNotifications
}

class NotificationNotifier extends StateNotifier<NotificationState> {
  final NotificationRepository notificationRepository;
  NotificationNotifier(this.notificationRepository) : super(const NotificationState());

  bool get isFetching =>
      state.state != NotificationConcreteState.loading &&
          state.state != NotificationConcreteState.fetchingMore;

  Future<void> fetchNotifications({TypeNotification type = TypeNotification.all}) async {
    if (isFetching &&
        state.state != NotificationConcreteState.fetchedAllNotifications) {
      state = state.copyWith(
        state: state.page > 0
            ? NotificationConcreteState.fetchingMore
            : NotificationConcreteState.loading,
        isLoading: true,
      );

      final response = await notificationRepository.fetchNotifications(type: type);
      updateStateFromResponse(response);
    } else {
      state = state.copyWith(
        state: NotificationConcreteState.fetchedAllNotifications,
        message: 'No more notifications available',
        isLoading: false,
      );
    }

  }

  void updateStateFromResponse(Either<AppException, List<Notifications>> response) {
    response.fold((failure) {
      state = state.copyWith(
        // state: HomeConcreteState.failure,
        message: failure.message??'',
        isLoading: false,
      );
    }, (data) {
      final productList = data;

      final List<Notifications> totalProducts = productList;

      state = state.copyWith(
        state: totalProducts.length == data.length
            ? NotificationConcreteState.fetchedAllNotifications
            : NotificationConcreteState.loaded,
        listNotifications: totalProducts,
        hasData: true,
        message: totalProducts.isEmpty ? 'No notifications found' : '',
        isLoading: false,
      );
    });
  }

}