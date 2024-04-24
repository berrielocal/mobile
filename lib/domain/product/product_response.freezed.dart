// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  int? get productId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;
  int? get maxSize => throw _privateConstructorUsedError;
  int? get minSize => throw _privateConstructorUsedError;
  String? get units => throw _privateConstructorUsedError;
  int? get shopId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call(
      {int? productId,
      String? name,
      String? imageUrl,
      double? cost,
      int? maxSize,
      int? minSize,
      String? units,
      int? shopId});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? cost = freezed,
    Object? maxSize = freezed,
    Object? minSize = freezed,
    Object? units = freezed,
    Object? shopId = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      minSize: freezed == minSize
          ? _value.minSize
          : minSize // ignore: cast_nullable_to_non_nullable
              as int?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(_$ProductResponseImpl value,
          $Res Function(_$ProductResponseImpl) then) =
      __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productId,
      String? name,
      String? imageUrl,
      double? cost,
      int? maxSize,
      int? minSize,
      String? units,
      int? shopId});
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
      _$ProductResponseImpl _value, $Res Function(_$ProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? cost = freezed,
    Object? maxSize = freezed,
    Object? minSize = freezed,
    Object? units = freezed,
    Object? shopId = freezed,
  }) {
    return _then(_$ProductResponseImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      minSize: freezed == minSize
          ? _value.minSize
          : minSize // ignore: cast_nullable_to_non_nullable
              as int?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String?,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl(
      {this.productId,
      this.name,
      this.imageUrl,
      this.cost,
      this.maxSize,
      this.minSize,
      this.units,
      this.shopId});

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  final int? productId;
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final double? cost;
  @override
  final int? maxSize;
  @override
  final int? minSize;
  @override
  final String? units;
  @override
  final int? shopId;

  @override
  String toString() {
    return 'ProductResponse(productId: $productId, name: $name, imageUrl: $imageUrl, cost: $cost, maxSize: $maxSize, minSize: $minSize, units: $units, shopId: $shopId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.minSize, minSize) || other.minSize == minSize) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.shopId, shopId) || other.shopId == shopId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, name, imageUrl, cost,
      maxSize, minSize, units, shopId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse(
      {final int? productId,
      final String? name,
      final String? imageUrl,
      final double? cost,
      final int? maxSize,
      final int? minSize,
      final String? units,
      final int? shopId}) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  int? get productId;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  double? get cost;
  @override
  int? get maxSize;
  @override
  int? get minSize;
  @override
  String? get units;
  @override
  int? get shopId;
  @override
  @JsonKey(ignore: true)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
