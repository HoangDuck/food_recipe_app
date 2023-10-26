// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsImpl _$$NotificationsImplFromJson(Map<String, dynamic> json) =>
    _$NotificationsImpl(
      idNotification: json['idNotification'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      time: json['time'] as String?,
      isToday: json['isToday'] as bool? ?? false,
    );

Map<String, dynamic> _$$NotificationsImplToJson(_$NotificationsImpl instance) =>
    <String, dynamic>{
      'idNotification': instance.idNotification,
      'title': instance.title,
      'body': instance.body,
      'time': instance.time,
      'isToday': instance.isToday,
    };
