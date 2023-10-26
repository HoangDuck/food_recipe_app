// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Statistic _$StatisticFromJson(Map<String, dynamic> json) {
  return _Statistic.fromJson(json);
}

/// @nodoc
mixin _$Statistic {
  int get recipe => throw _privateConstructorUsedError;
  int get videos => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;
  int get following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticCopyWith<Statistic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticCopyWith<$Res> {
  factory $StatisticCopyWith(Statistic value, $Res Function(Statistic) then) =
      _$StatisticCopyWithImpl<$Res, Statistic>;
  @useResult
  $Res call({int recipe, int videos, int followers, int following});
}

/// @nodoc
class _$StatisticCopyWithImpl<$Res, $Val extends Statistic>
    implements $StatisticCopyWith<$Res> {
  _$StatisticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? videos = null,
    Object? followers = null,
    Object? following = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticImplCopyWith<$Res>
    implements $StatisticCopyWith<$Res> {
  factory _$$StatisticImplCopyWith(
          _$StatisticImpl value, $Res Function(_$StatisticImpl) then) =
      __$$StatisticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int recipe, int videos, int followers, int following});
}

/// @nodoc
class __$$StatisticImplCopyWithImpl<$Res>
    extends _$StatisticCopyWithImpl<$Res, _$StatisticImpl>
    implements _$$StatisticImplCopyWith<$Res> {
  __$$StatisticImplCopyWithImpl(
      _$StatisticImpl _value, $Res Function(_$StatisticImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? videos = null,
    Object? followers = null,
    Object? following = null,
  }) {
    return _then(_$StatisticImpl(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticImpl with DiagnosticableTreeMixin implements _Statistic {
  const _$StatisticImpl(
      {this.recipe = 0,
      this.videos = 0,
      this.followers = 0,
      this.following = 0});

  factory _$StatisticImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticImplFromJson(json);

  @override
  @JsonKey()
  final int recipe;
  @override
  @JsonKey()
  final int videos;
  @override
  @JsonKey()
  final int followers;
  @override
  @JsonKey()
  final int following;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Statistic(recipe: $recipe, videos: $videos, followers: $followers, following: $following)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Statistic'))
      ..add(DiagnosticsProperty('recipe', recipe))
      ..add(DiagnosticsProperty('videos', videos))
      ..add(DiagnosticsProperty('followers', followers))
      ..add(DiagnosticsProperty('following', following));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, recipe, videos, followers, following);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticImplCopyWith<_$StatisticImpl> get copyWith =>
      __$$StatisticImplCopyWithImpl<_$StatisticImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticImplToJson(
      this,
    );
  }
}

abstract class _Statistic implements Statistic {
  const factory _Statistic(
      {final int recipe,
      final int videos,
      final int followers,
      final int following}) = _$StatisticImpl;

  factory _Statistic.fromJson(Map<String, dynamic> json) =
      _$StatisticImpl.fromJson;

  @override
  int get recipe;
  @override
  int get videos;
  @override
  int get followers;
  @override
  int get following;
  @override
  @JsonKey(ignore: true)
  _$$StatisticImplCopyWith<_$StatisticImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
