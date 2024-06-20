// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_add_to_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductAddToCartRequest _$ProductAddToCartRequestFromJson(
    Map<String, dynamic> json) {
  return _ProductAddToCartRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductAddToCartRequest {
  int get size => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAddToCartRequestCopyWith<ProductAddToCartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAddToCartRequestCopyWith<$Res> {
  factory $ProductAddToCartRequestCopyWith(ProductAddToCartRequest value,
          $Res Function(ProductAddToCartRequest) then) =
      _$ProductAddToCartRequestCopyWithImpl<$Res, ProductAddToCartRequest>;
  @useResult
  $Res call({int size, int productId});
}

/// @nodoc
class _$ProductAddToCartRequestCopyWithImpl<$Res,
        $Val extends ProductAddToCartRequest>
    implements $ProductAddToCartRequestCopyWith<$Res> {
  _$ProductAddToCartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductAddToCartRequestImplCopyWith<$Res>
    implements $ProductAddToCartRequestCopyWith<$Res> {
  factory _$$ProductAddToCartRequestImplCopyWith(
          _$ProductAddToCartRequestImpl value,
          $Res Function(_$ProductAddToCartRequestImpl) then) =
      __$$ProductAddToCartRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int size, int productId});
}

/// @nodoc
class __$$ProductAddToCartRequestImplCopyWithImpl<$Res>
    extends _$ProductAddToCartRequestCopyWithImpl<$Res,
        _$ProductAddToCartRequestImpl>
    implements _$$ProductAddToCartRequestImplCopyWith<$Res> {
  __$$ProductAddToCartRequestImplCopyWithImpl(
      _$ProductAddToCartRequestImpl _value,
      $Res Function(_$ProductAddToCartRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? productId = null,
  }) {
    return _then(_$ProductAddToCartRequestImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$ProductAddToCartRequestImpl implements _ProductAddToCartRequest {
  const _$ProductAddToCartRequestImpl(
      {required this.size, required this.productId});

  factory _$ProductAddToCartRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAddToCartRequestImplFromJson(json);

  @override
  final int size;
  @override
  final int productId;

  @override
  String toString() {
    return 'ProductAddToCartRequest(size: $size, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAddToCartRequestImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAddToCartRequestImplCopyWith<_$ProductAddToCartRequestImpl>
      get copyWith => __$$ProductAddToCartRequestImplCopyWithImpl<
          _$ProductAddToCartRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAddToCartRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductAddToCartRequest implements ProductAddToCartRequest {
  const factory _ProductAddToCartRequest(
      {required final int size,
      required final int productId}) = _$ProductAddToCartRequestImpl;

  factory _ProductAddToCartRequest.fromJson(Map<String, dynamic> json) =
      _$ProductAddToCartRequestImpl.fromJson;

  @override
  int get size;
  @override
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$$ProductAddToCartRequestImplCopyWith<_$ProductAddToCartRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
