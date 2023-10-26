// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientsList _$IngredientsListFromJson(Map<String, dynamic> json) {
  return _IngredientsList.fromJson(json);
}

/// @nodoc
mixin _$IngredientsList {
  List<Ingredients> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientsListCopyWith<IngredientsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsListCopyWith<$Res> {
  factory $IngredientsListCopyWith(
          IngredientsList value, $Res Function(IngredientsList) then) =
      _$IngredientsListCopyWithImpl<$Res, IngredientsList>;
  @useResult
  $Res call({List<Ingredients> ingredients});
}

/// @nodoc
class _$IngredientsListCopyWithImpl<$Res, $Val extends IngredientsList>
    implements $IngredientsListCopyWith<$Res> {
  _$IngredientsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredients>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsListImplCopyWith<$Res>
    implements $IngredientsListCopyWith<$Res> {
  factory _$$IngredientsListImplCopyWith(_$IngredientsListImpl value,
          $Res Function(_$IngredientsListImpl) then) =
      __$$IngredientsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ingredients> ingredients});
}

/// @nodoc
class __$$IngredientsListImplCopyWithImpl<$Res>
    extends _$IngredientsListCopyWithImpl<$Res, _$IngredientsListImpl>
    implements _$$IngredientsListImplCopyWith<$Res> {
  __$$IngredientsListImplCopyWithImpl(
      _$IngredientsListImpl _value, $Res Function(_$IngredientsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_$IngredientsListImpl(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredients>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientsListImpl
    with DiagnosticableTreeMixin
    implements _IngredientsList {
  const _$IngredientsListImpl({required final List<Ingredients> ingredients})
      : _ingredients = ingredients;

  factory _$IngredientsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientsListImplFromJson(json);

  final List<Ingredients> _ingredients;
  @override
  List<Ingredients> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IngredientsList(ingredients: $ingredients)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IngredientsList'))
      ..add(DiagnosticsProperty('ingredients', ingredients));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsListImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsListImplCopyWith<_$IngredientsListImpl> get copyWith =>
      __$$IngredientsListImplCopyWithImpl<_$IngredientsListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientsListImplToJson(
      this,
    );
  }
}

abstract class _IngredientsList implements IngredientsList {
  const factory _IngredientsList(
      {required final List<Ingredients> ingredients}) = _$IngredientsListImpl;

  factory _IngredientsList.fromJson(Map<String, dynamic> json) =
      _$IngredientsListImpl.fromJson;

  @override
  List<Ingredients> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsListImplCopyWith<_$IngredientsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
