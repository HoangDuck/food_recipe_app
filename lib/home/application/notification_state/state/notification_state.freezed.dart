// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationState {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  NotificationConcreteState get state => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get selectIndex => throw _privateConstructorUsedError;
  List<Notifications> get listNotifications =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {int total,
      int page,
      NotificationConcreteState state,
      bool hasData,
      String message,
      bool isLoading,
      int selectIndex,
      List<Notifications> listNotifications});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? state = null,
    Object? hasData = null,
    Object? message = null,
    Object? isLoading = null,
    Object? selectIndex = null,
    Object? listNotifications = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as NotificationConcreteState,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectIndex: null == selectIndex
          ? _value.selectIndex
          : selectIndex // ignore: cast_nullable_to_non_nullable
              as int,
      listNotifications: null == listNotifications
          ? _value.listNotifications
          : listNotifications // ignore: cast_nullable_to_non_nullable
              as List<Notifications>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int page,
      NotificationConcreteState state,
      bool hasData,
      String message,
      bool isLoading,
      int selectIndex,
      List<Notifications> listNotifications});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? state = null,
    Object? hasData = null,
    Object? message = null,
    Object? isLoading = null,
    Object? selectIndex = null,
    Object? listNotifications = null,
  }) {
    return _then(_$NotificationStateImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as NotificationConcreteState,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectIndex: null == selectIndex
          ? _value.selectIndex
          : selectIndex // ignore: cast_nullable_to_non_nullable
              as int,
      listNotifications: null == listNotifications
          ? _value._listNotifications
          : listNotifications // ignore: cast_nullable_to_non_nullable
              as List<Notifications>,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {this.total = 0,
      this.page = 0,
      this.state = NotificationConcreteState.initial,
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.selectIndex = 0,
      final List<Notifications> listNotifications = const []})
      : _listNotifications = listNotifications;

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final NotificationConcreteState state;
  @override
  @JsonKey()
  final bool hasData;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int selectIndex;
  final List<Notifications> _listNotifications;
  @override
  @JsonKey()
  List<Notifications> get listNotifications {
    if (_listNotifications is EqualUnmodifiableListView)
      return _listNotifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listNotifications);
  }

  @override
  String toString() {
    return 'NotificationState(total: $total, page: $page, state: $state, hasData: $hasData, message: $message, isLoading: $isLoading, selectIndex: $selectIndex, listNotifications: $listNotifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectIndex, selectIndex) ||
                other.selectIndex == selectIndex) &&
            const DeepCollectionEquality()
                .equals(other._listNotifications, _listNotifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      total,
      page,
      state,
      hasData,
      message,
      isLoading,
      selectIndex,
      const DeepCollectionEquality().hash(_listNotifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final int total,
      final int page,
      final NotificationConcreteState state,
      final bool hasData,
      final String message,
      final bool isLoading,
      final int selectIndex,
      final List<Notifications> listNotifications}) = _$NotificationStateImpl;

  @override
  int get total;
  @override
  int get page;
  @override
  NotificationConcreteState get state;
  @override
  bool get hasData;
  @override
  String get message;
  @override
  bool get isLoading;
  @override
  int get selectIndex;
  @override
  List<Notifications> get listNotifications;
  @override
  @JsonKey(ignore: true)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
