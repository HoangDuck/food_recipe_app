
enum TypeNotification {
  all, unread, read
}

class NotificationModel {
  NotificationModel({
    required this.notifications,
  });
  late final List<Notifications> notifications;

  NotificationModel.fromJson(Map<String, dynamic> json){
    notifications = List.from(json['notifications']).map((e)=>Notifications.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['notifications'] = notifications.map((e)=>e.toJson()).toList();
    return data;
  }
}


class Notifications {
  Notifications({
    this.idNotification,
    this.title,
    this.body,
    this.time,
    this.isToday = false,
  });
  late final String? idNotification;
  late final String? title;
  late final String? body;
  late final String? time;
  late final bool isToday;

  Notifications.fromJson(Map<String, dynamic> json){
    idNotification = json['idNotification'];
    title = json['title'];
    body = json['body'];
    isToday = json['isToday'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idNotification'] = idNotification;
    data['title'] = title;
    data['body'] = body;
    data['isToday'] = isToday;
    data['time'] = time;
    return data;
  }
}