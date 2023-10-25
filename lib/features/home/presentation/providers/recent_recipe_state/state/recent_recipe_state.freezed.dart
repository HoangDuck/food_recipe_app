// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentRecipeState {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get selectIndex => throw _privateConstructorUsedError;
  List<Meals> get listMealsByCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentRecipeStateCopyWith<RecentRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentRecipeStateCopyWith<$Res> {
  factory $RecentRecipeStateCopyWith(
          RecentRecipeState value, $Res Function(RecentRecipeState) then) =
      _$RecentRecipeStateCopyWithImpl<$Res, RecentRecipeState>;
  @useResult
  $Res call(
      {int total,
      int page,
      bool hasData,
      String message,
      bool isLoading,
      int selectIndex,
      List<Meals> listMealsByCategory});
}

/// @nodoc
class _$RecentRecipeStateCopyWithImpl<$Res, $Val extends RecentRecipeState>
    implements $RecentRecipeStateCopyWith<$Res> {
  _$RecentRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
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
              as List<Meals>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentRecipeStateImplCopyWith<$Res>
    implements $RecentRecipeStateCopyWith<$Res> {
  factory _$$RecentRecipeStateImplCopyWith(_$RecentRecipeStateImpl value,
          $Res Function(_$RecentRecipeStateImpl) then) =
      __$$RecentRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int page,
      bool hasData,
      String message,
      bool isLoading,
      int selectIndex,
      List<Meals> listMealsByCategory});
}

/// @nodoc
class __$$RecentRecipeStateImplCopyWithImpl<$Res>
    extends _$RecentRecipeStateCopyWithImpl<$Res, _$RecentRecipeStateImpl>
    implements _$$RecentRecipeStateImplCopyWith<$Res> {
  __$$RecentRecipeStateImplCopyWithImpl(_$RecentRecipeStateImpl _value,
      $Res Function(_$RecentRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? hasData = null,
    Object? message = null,
    Object? isLoading = null,
    Object? selectIndex = null,
    Object? listMealsByCategory = null,
  }) {
    return _then(_$RecentRecipeStateImpl(
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
              as List<Meals>,
    ));
  }
}

/// @nodoc

class _$RecentRecipeStateImpl implements _RecentRecipeState {
  const _$RecentRecipeStateImpl(
      {this.total = 0,
      this.page = 0,
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.selectIndex = 0,
      final List<Meals> listMealsByCategory = const []})
      : _listMealsByCategory = listMealsByCategory;

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
  final String message;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int selectIndex;
  final List<Meals> _listMealsByCategory;
  @override
  @JsonKey()
  List<Meals> get listMealsByCategory {
    if (_listMealsByCategory is EqualUnmodifiableListView)
      return _listMealsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMealsByCategory);
  }

  @override
  String toString() {
    return 'RecentRecipeState(total: $total, page: $page, hasData: $hasData, message: $message, isLoading: $isLoading, selectIndex: $selectIndex, listMealsByCategory: $listMealsByCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentRecipeStateImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
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
      hasData,
      message,
      isLoading,
      selectIndex,
      const DeepCollectionEquality().hash(_listMealsByCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentRecipeStateImplCopyWith<_$RecentRecipeStateImpl> get copyWith =>
      __$$RecentRecipeStateImplCopyWithImpl<_$RecentRecipeStateImpl>(
          this, _$identity);
}

abstract class _RecentRecipeState implements RecentRecipeState {
  const factory _RecentRecipeState(
      {final int total,
      final int page,
      final bool hasData,
      final String message,
      final bool isLoading,
      final int selectIndex,
      final List<Meals> listMealsByCategory}) = _$RecentRecipeStateImpl;

  @override
  int get total;
  @override
  int get page;
  @override
  bool get hasData;
  @override
  String get message;
  @override
  bool get isLoading;
  @override
  int get selectIndex;
  @override
  List<Meals> get listMealsByCategory;
  @override
  @JsonKey(ignore: true)
  _$$RecentRecipeStateImplCopyWith<_$RecentRecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
