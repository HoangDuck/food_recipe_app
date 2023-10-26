// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_by_category_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealByCategoryList _$MealByCategoryListFromJson(Map<String, dynamic> json) {
  return _MealByCategoryList.fromJson(json);
}

/// @nodoc
mixin _$MealByCategoryList {
  List<Meals> get meals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealByCategoryListCopyWith<MealByCategoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealByCategoryListCopyWith<$Res> {
  factory $MealByCategoryListCopyWith(
          MealByCategoryList value, $Res Function(MealByCategoryList) then) =
      _$MealByCategoryListCopyWithImpl<$Res, MealByCategoryList>;
  @useResult
  $Res call({List<Meals> meals});
}

/// @nodoc
class _$MealByCategoryListCopyWithImpl<$Res, $Val extends MealByCategoryList>
    implements $MealByCategoryListCopyWith<$Res> {
  _$MealByCategoryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_value.copyWith(
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meals>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealByCategoryListImplCopyWith<$Res>
    implements $MealByCategoryListCopyWith<$Res> {
  factory _$$MealByCategoryListImplCopyWith(_$MealByCategoryListImpl value,
          $Res Function(_$MealByCategoryListImpl) then) =
      __$$MealByCategoryListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Meals> meals});
}

/// @nodoc
class __$$MealByCategoryListImplCopyWithImpl<$Res>
    extends _$MealByCategoryListCopyWithImpl<$Res, _$MealByCategoryListImpl>
    implements _$$MealByCategoryListImplCopyWith<$Res> {
  __$$MealByCategoryListImplCopyWithImpl(_$MealByCategoryListImpl _value,
      $Res Function(_$MealByCategoryListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$MealByCategoryListImpl(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meals>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealByCategoryListImpl
    with DiagnosticableTreeMixin
    implements _MealByCategoryList {
  const _$MealByCategoryListImpl({required final List<Meals> meals})
      : _meals = meals;

  factory _$MealByCategoryListImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealByCategoryListImplFromJson(json);

  final List<Meals> _meals;
  @override
  List<Meals> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MealByCategoryList(meals: $meals)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MealByCategoryList'))
      ..add(DiagnosticsProperty('meals', meals));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealByCategoryListImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealByCategoryListImplCopyWith<_$MealByCategoryListImpl> get copyWith =>
      __$$MealByCategoryListImplCopyWithImpl<_$MealByCategoryListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealByCategoryListImplToJson(
      this,
    );
  }
}

abstract class _MealByCategoryList implements MealByCategoryList {
  const factory _MealByCategoryList({required final List<Meals> meals}) =
      _$MealByCategoryListImpl;

  factory _MealByCategoryList.fromJson(Map<String, dynamic> json) =
      _$MealByCategoryListImpl.fromJson;

  @override
  List<Meals> get meals;
  @override
  @JsonKey(ignore: true)
  _$$MealByCategoryListImplCopyWith<_$MealByCategoryListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
