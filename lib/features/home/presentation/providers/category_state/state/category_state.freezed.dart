// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState<T> {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  CategoryConcreteState get state => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get selectIndex => throw _privateConstructorUsedError;
  List<T> get listMealsByCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<T, CategoryState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<T, $Res> {
  factory $CategoryStateCopyWith(
          CategoryState<T> value, $Res Function(CategoryState<T>) then) =
      _$CategoryStateCopyWithImpl<T, $Res, CategoryState<T>>;
  @useResult
  $Res call(
      {int total,
      int page,
      CategoryConcreteState state,
      bool hasData,
      String message,
      bool isLoading,
      int selectIndex,
      List<T> listMealsByCategory});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<T, $Res, $Val extends CategoryState<T>>
    implements $CategoryStateCopyWith<T, $Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
    Object? listMealsByCategory = null,
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
              as CategoryConcreteState,
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
      listMealsByCategory: null == listMealsByCategory
          ? _value.listMealsByCategory
          : listMealsByCategory // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<T, $Res>
    implements $CategoryStateCopyWith<T, $Res> {
  factory _$$CategoryStateImplCopyWith(_$CategoryStateImpl<T> value,
          $Res Function(_$CategoryStateImpl<T>) then) =
      __$$CategoryStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int page,
      CategoryConcreteState state,
      bool hasData,
      String message,
      bool isLoading,
      int selectIndex,
      List<T> listMealsByCategory});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$CategoryStateImpl<T>>
    implements _$$CategoryStateImplCopyWith<T, $Res> {
  __$$CategoryStateImplCopyWithImpl(_$CategoryStateImpl<T> _value,
      $Res Function(_$CategoryStateImpl<T>) _then)
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
    Object? listMealsByCategory = null,
  }) {
    return _then(_$CategoryStateImpl<T>(
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
              as CategoryConcreteState,
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
      listMealsByCategory: null == listMealsByCategory
          ? _value._listMealsByCategory
          : listMealsByCategory // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl<T> implements _CategoryState<T> {
  const _$CategoryStateImpl(
      {this.total = 0,
      this.page = 0,
      this.state = CategoryConcreteState.initial,
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.selectIndex = 0,
      final List<T> listMealsByCategory = const []})
      : _listMealsByCategory = listMealsByCategory;

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final CategoryConcreteState state;
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
  final List<T> _listMealsByCategory;
  @override
  @JsonKey()
  List<T> get listMealsByCategory {
    if (_listMealsByCategory is EqualUnmodifiableListView)
      return _listMealsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMealsByCategory);
  }

  @override
  String toString() {
    return 'CategoryState<$T>(total: $total, page: $page, state: $state, hasData: $hasData, message: $message, isLoading: $isLoading, selectIndex: $selectIndex, listMealsByCategory: $listMealsByCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl<T> &&
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
                .equals(other._listMealsByCategory, _listMealsByCategory));
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
      const DeepCollectionEquality().hash(_listMealsByCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<T, _$CategoryStateImpl<T>> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<T, _$CategoryStateImpl<T>>(
          this, _$identity);
}

abstract class _CategoryState<T> implements CategoryState<T> {
  const factory _CategoryState(
      {final int total,
      final int page,
      final CategoryConcreteState state,
      final bool hasData,
      final String message,
      final bool isLoading,
      final int selectIndex,
      final List<T> listMealsByCategory}) = _$CategoryStateImpl<T>;

  @override
  int get total;
  @override
  int get page;
  @override
  CategoryConcreteState get state;
  @override
  bool get hasData;
  @override
  String get message;
  @override
  bool get isLoading;
  @override
  int get selectIndex;
  @override
  List<T> get listMealsByCategory;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<T, _$CategoryStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
