// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) {
  return _Ingredients.fromJson(json);
}

/// @nodoc
mixin _$Ingredients {
  String? get idIngredient => throw _privateConstructorUsedError;
  String? get imgIngredient => throw _privateConstructorUsedError;
  String? get nameIngredient => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientsCopyWith<Ingredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsCopyWith<$Res> {
  factory $IngredientsCopyWith(
          Ingredients value, $Res Function(Ingredients) then) =
      _$IngredientsCopyWithImpl<$Res, Ingredients>;
  @useResult
  $Res call(
      {String? idIngredient,
      String? imgIngredient,
      String? nameIngredient,
      String? quantity});
}

/// @nodoc
class _$IngredientsCopyWithImpl<$Res, $Val extends Ingredients>
    implements $IngredientsCopyWith<$Res> {
  _$IngredientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idIngredient = freezed,
    Object? imgIngredient = freezed,
    Object? nameIngredient = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      idIngredient: freezed == idIngredient
          ? _value.idIngredient
          : idIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      imgIngredient: freezed == imgIngredient
          ? _value.imgIngredient
          : imgIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      nameIngredient: freezed == nameIngredient
          ? _value.nameIngredient
          : nameIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsImplCopyWith<$Res>
    implements $IngredientsCopyWith<$Res> {
  factory _$$IngredientsImplCopyWith(
          _$IngredientsImpl value, $Res Function(_$IngredientsImpl) then) =
      __$$IngredientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idIngredient,
      String? imgIngredient,
      String? nameIngredient,
      String? quantity});
}

/// @nodoc
class __$$IngredientsImplCopyWithImpl<$Res>
    extends _$IngredientsCopyWithImpl<$Res, _$IngredientsImpl>
    implements _$$IngredientsImplCopyWith<$Res> {
  __$$IngredientsImplCopyWithImpl(
      _$IngredientsImpl _value, $Res Function(_$IngredientsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idIngredient = freezed,
    Object? imgIngredient = freezed,
    Object? nameIngredient = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$IngredientsImpl(
      idIngredient: freezed == idIngredient
          ? _value.idIngredient
          : idIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      imgIngredient: freezed == imgIngredient
          ? _value.imgIngredient
          : imgIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      nameIngredient: freezed == nameIngredient
          ? _value.nameIngredient
          : nameIngredient // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientsImpl with DiagnosticableTreeMixin implements _Ingredients {
  const _$IngredientsImpl(
      {this.idIngredient,
      this.imgIngredient,
      this.nameIngredient,
      this.quantity});

  factory _$IngredientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientsImplFromJson(json);

  @override
  final String? idIngredient;
  @override
  final String? imgIngredient;
  @override
  final String? nameIngredient;
  @override
  final String? quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ingredients(idIngredient: $idIngredient, imgIngredient: $imgIngredient, nameIngredient: $nameIngredient, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ingredients'))
      ..add(DiagnosticsProperty('idIngredient', idIngredient))
      ..add(DiagnosticsProperty('imgIngredient', imgIngredient))
      ..add(DiagnosticsProperty('nameIngredient', nameIngredient))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsImpl &&
            (identical(other.idIngredient, idIngredient) ||
                other.idIngredient == idIngredient) &&
            (identical(other.imgIngredient, imgIngredient) ||
                other.imgIngredient == imgIngredient) &&
            (identical(other.nameIngredient, nameIngredient) ||
                other.nameIngredient == nameIngredient) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, idIngredient, imgIngredient, nameIngredient, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsImplCopyWith<_$IngredientsImpl> get copyWith =>
      __$$IngredientsImplCopyWithImpl<_$IngredientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientsImplToJson(
      this,
    );
  }
}

abstract class _Ingredients implements Ingredients {
  const factory _Ingredients(
      {final String? idIngredient,
      final String? imgIngredient,
      final String? nameIngredient,
      final String? quantity}) = _$IngredientsImpl;

  factory _Ingredients.fromJson(Map<String, dynamic> json) =
      _$IngredientsImpl.fromJson;

  @override
  String? get idIngredient;
  @override
  String? get imgIngredient;
  @override
  String? get nameIngredient;
  @override
  String? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsImplCopyWith<_$IngredientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
