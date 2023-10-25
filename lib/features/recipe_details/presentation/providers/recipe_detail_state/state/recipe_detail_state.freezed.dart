// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDetailState _$RecipeDetailStateFromJson(Map<String, dynamic> json) {
  return _RecipeDetailState.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetailState {
  RecipeDetailConcreteState get state => throw _privateConstructorUsedError;
  bool get hasData => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Meals? get meal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailStateCopyWith<RecipeDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailStateCopyWith<$Res> {
  factory $RecipeDetailStateCopyWith(
          RecipeDetailState value, $Res Function(RecipeDetailState) then) =
      _$RecipeDetailStateCopyWithImpl<$Res, RecipeDetailState>;
  @useResult
  $Res call(
      {RecipeDetailConcreteState state,
      bool hasData,
      String message,
      bool isLoading,
      Meals? meal});

  $MealsCopyWith<$Res>? get meal;
}

/// @nodoc
class _$RecipeDetailStateCopyWithImpl<$Res, $Val extends RecipeDetailState>
    implements $RecipeDetailStateCopyWith<$Res> {
  _$RecipeDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? hasData = null,
    Object? message = null,
    Object? isLoading = null,
    Object? meal = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RecipeDetailConcreteState,
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
      meal: freezed == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meals?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MealsCopyWith<$Res>? get meal {
    if (_value.meal == null) {
      return null;
    }

    return $MealsCopyWith<$Res>(_value.meal!, (value) {
      return _then(_value.copyWith(meal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeDetailStateImplCopyWith<$Res>
    implements $RecipeDetailStateCopyWith<$Res> {
  factory _$$RecipeDetailStateImplCopyWith(_$RecipeDetailStateImpl value,
          $Res Function(_$RecipeDetailStateImpl) then) =
      __$$RecipeDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecipeDetailConcreteState state,
      bool hasData,
      String message,
      bool isLoading,
      Meals? meal});

  @override
  $MealsCopyWith<$Res>? get meal;
}

/// @nodoc
class __$$RecipeDetailStateImplCopyWithImpl<$Res>
    extends _$RecipeDetailStateCopyWithImpl<$Res, _$RecipeDetailStateImpl>
    implements _$$RecipeDetailStateImplCopyWith<$Res> {
  __$$RecipeDetailStateImplCopyWithImpl(_$RecipeDetailStateImpl _value,
      $Res Function(_$RecipeDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? hasData = null,
    Object? message = null,
    Object? isLoading = null,
    Object? meal = freezed,
  }) {
    return _then(_$RecipeDetailStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RecipeDetailConcreteState,
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
      meal: freezed == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meals?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDetailStateImpl implements _RecipeDetailState {
  const _$RecipeDetailStateImpl(
      {this.state = RecipeDetailConcreteState.initial,
      this.hasData = false,
      this.message = '',
      this.isLoading = false,
      this.meal});

  factory _$RecipeDetailStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDetailStateImplFromJson(json);

  @override
  @JsonKey()
  final RecipeDetailConcreteState state;
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
  final Meals? meal;

  @override
  String toString() {
    return 'RecipeDetailState(state: $state, hasData: $hasData, message: $message, isLoading: $isLoading, meal: $meal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.hasData, hasData) || other.hasData == hasData) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.meal, meal) || other.meal == meal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, state, hasData, message, isLoading, meal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailStateImplCopyWith<_$RecipeDetailStateImpl> get copyWith =>
      __$$RecipeDetailStateImplCopyWithImpl<_$RecipeDetailStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDetailStateImplToJson(
      this,
    );
  }
}

abstract class _RecipeDetailState implements RecipeDetailState {
  const factory _RecipeDetailState(
      {final RecipeDetailConcreteState state,
      final bool hasData,
      final String message,
      final bool isLoading,
      final Meals? meal}) = _$RecipeDetailStateImpl;

  factory _RecipeDetailState.fromJson(Map<String, dynamic> json) =
      _$RecipeDetailStateImpl.fromJson;

  @override
  RecipeDetailConcreteState get state;
  @override
  bool get hasData;
  @override
  String get message;
  @override
  bool get isLoading;
  @override
  Meals? get meal;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailStateImplCopyWith<_$RecipeDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
