
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_recipe_app/features/home/domain/providers/notification_providers.dart';
import 'package:food_recipe_app/features/home/presentation/providers/notification_state/state/notification_notifier.dart';
import 'package:food_recipe_app/features/home/presentation/providers/notification_state/state/notification_state.dart';

final notificationNotifierProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return NotificationNotifier(repository)..fetchNotifications();
});
