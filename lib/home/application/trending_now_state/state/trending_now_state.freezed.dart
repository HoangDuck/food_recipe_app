// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_now_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrendingNowState {
  List<Meals> get productList => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  TrendingNowConcreteState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingNowStateCopyWith<TrendingNowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingNowStateCopyWith<$Res> {
  factory $TrendingNowStateCopyWith(
          TrendingNowState value, $Res Function(TrendingNowState) then) =
      _$TrendingNowStateCopyWithImpl<$Res, TrendingNowState>;
  @useResult
  $Res call(
      {List<Meals> productList,
      int total,
      int page,
      bool hasData,
      TrendingNowConcreteState state,
      String message,
      bool isLoading});
}

/// @nodoc
class _$TrendingNowStateCopyWithImpl<$Res, $Val extends TrendingNowState>
    implements $TrendingNowStateCopyWith<$Res> {
  _$TrendingNowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? total = null,
    Object? page = null,
    Object? hasData = null,
    Object? state = null,
    Object? message = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Meals>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TrendingNowConcreteState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingNowStateImplCopyWith<$Res>
    implements $TrendingNowStateCopyWith<$Res> {
  factory _$$TrendingNowStateImplCopyWith(_$TrendingNowStateImpl value,
          $Res Function(_$TrendingNowStateImpl) then) =
      __$$TrendingNowStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Meals> productList,
      int total,
      int page,
      bool hasData,
      TrendingNowConcreteState state,
      String message,
      bool isLoading});
}

/// @nodoc
class __$$TrendingNowStateImplCopyWithImpl<$Res>
    extends _$TrendingNowStateCopyWithImpl<$Res, _$TrendingNowStateImpl>
    implements _$$TrendingNowStateImplCopyWith<$Res> {
  __$$TrendingNowStateImplCopyWithImpl(_$TrendingNowStateImpl _value,
      $Res Function(_$TrendingNowStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? total = null,
    Object? page = null,
    Object? hasData = null,
    Object? state = null,
    Object? message = null,
    Object? isLoading = null,
  }) {
    return _then(_$TrendingNowStateImpl(
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Meals>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasData: null == hasData
          ? _value.hasData
          : hasData // ignore: cast_nullable_to_non_nullable
              as bool,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as TrendingNowConcreteState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TrendingNowStateImpl implements _TrendingNowState {
  const _$TrendingNowStateImpl(
      {final List<Meals> productList = const [],
      this.total = 0,
      this.page = 0,
      this.hasData = false,
      this.state = TrendingNowConcreteState.initial,
      this.message = '',
      this.isLoading = false})
      : _productList = productList;

  final List<Meals> _productList;
  @override
  @JsonKey()
  List<Meals> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool hasData;
  @override
  @JsonKey()
  final TrendingNowConcreteState state;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TrendingNowState(productList: $productList, total: $total, page: $page, hasData: $hasData, state: $state, message: $message, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingNowStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productList),
      total,
      page,
      hasData,
      state,
      message,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingNowStateImplCopyWith<_$TrendingNowStateImpl> get copyWith =>
      __$$TrendingNowStateImplCopyWithImpl<_$TrendingNowStateImpl>(
          this, _$identity);
}

abstract class _TrendingNowState implements TrendingNowState {
  const factory _TrendingNowState(
      {final List<Meals> productList,
      final int total,
      final int page,
      final bool hasData,
      final TrendingNowConcreteState state,
      final String message,
      final bool isLoading}) = _$TrendingNowStateImpl;

  @override
  List<Meals> get productList;
  @override
  int get total;
  @override
  int get page;
  @override
  bool get hasData;
  @override
  TrendingNowConcreteState get state;
  @override
  String get message;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TrendingNowStateImplCopyWith<_$TrendingNowStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
