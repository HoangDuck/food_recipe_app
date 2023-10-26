// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListImpl _$$CategoryListImplFromJson(Map<String, dynamic> json) =>
    _$CategoryListImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryListImplToJson(_$CategoryListImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
