
import 'package:food_recipe_app/core/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/home/application/notification_state/notification_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(0) int total,
    @Default(0) int page,
    @Default(NotificationConcreteState.initial) NotificationConcreteState state,
    @Default(false) bool hasData,
    @Default('') String message,
    @Default(false) bool isLoading,
    @Default(0) int selectIndex,
    @Default([]) List<Notifications> listNotifications,
  }) = _NotificationState;
}