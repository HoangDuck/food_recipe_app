
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/home/application/notification_state/notification_notifier.dart';
import 'package:food_recipe_app/home/application/notification_state/state/notification_state.dart';
import 'package:food_recipe_app/home/shared/repository_providers/notification_providers.dart';

final notificationNotifierProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return NotificationNotifier(repository)..fetchNotifications();
});
