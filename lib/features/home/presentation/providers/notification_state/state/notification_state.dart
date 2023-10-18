
import 'package:equatable/equatable.dart';
import 'package:food_recipe_app/shared/domain/models/notifications/notifications.dart';

enum NotificationConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllNotifications
}

class NotificationState extends Equatable {
  final int total;
  final int page;
  final NotificationConcreteState state;
  final bool hasData;
  final String message;
  final bool isLoading;
  final int selectIndex;
  final List<Notifications> listNotifications;

  const NotificationState({
    this.isLoading = false,
    this.hasData = false,
    this.state = NotificationConcreteState.initial,
    this.message = '',
    this.page = 0,
    this.total = 0,
    this.selectIndex = 0,
    this.listNotifications = const [],
  });

  const NotificationState.initial({
    this.listNotifications = const [],
    this.total = 0,
    this.page = 0,
    this.state = NotificationConcreteState.initial,
    this.isLoading = false,
    this.hasData = false,
    this.message = '',
    this.selectIndex = 0,
  });

  NotificationState copyWith({
    List<Notifications>? listNotifications,
    int? total,
    int? page,
    bool? hasData,
    NotificationConcreteState? state,
    String? message,
    bool? isLoading,
    int? selectIndex,
  }) {
    return NotificationState(
      isLoading: isLoading ?? this.isLoading,
      total: total ?? this.total,
      page: page ?? this.page,
      state: state ?? this.state,
      hasData: hasData ?? this.hasData,
      message: message ?? this.message,
      selectIndex: selectIndex ?? this.selectIndex,
      listNotifications: listNotifications ?? this.listNotifications,
    );
  }

  @override
  String toString() {
    return 'CategoryState(isLoading:$isLoading, total:$total page: $page, hasData: $hasData, message: $message)';
  }

  @override
  List<Object?> get props => [ page, hasData, message,state, selectIndex, listNotifications];
}