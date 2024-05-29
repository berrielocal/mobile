// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductCreateResponse _$ProductCreateResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductCreateResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductCreateResponse {
  int get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCreateResponseCopyWith<ProductCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCreateResponseCopyWith<$Res> {
  factory $ProductCreateResponseCopyWith(ProductCreateResponse value,
          $Res Function(ProductCreateResponse) then) =
      _$ProductCreateResponseCopyWithImpl<$Res, ProductCreateResponse>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class _$ProductCreateResponseCopyWithImpl<$Res,
        $Val extends ProductCreateResponse>
    implements $ProductCreateResponseCopyWith<$Res> {
  _$ProductCreateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCreateResponseImplCopyWith<$Res>
    implements $ProductCreateResponseCopyWith<$Res> {
  factory _$$ProductCreateResponseImplCopyWith(
          _$ProductCreateResponseImpl value,
          $Res Function(_$ProductCreateResponseImpl) then) =
      __$$ProductCreateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$ProductCreateResponseImplCopyWithImpl<$Res>
    extends _$ProductCreateResponseCopyWithImpl<$Res,
        _$ProductCreateResponseImpl>
    implements _$$ProductCreateResponseImplCopyWith<$Res> {
  __$$ProductCreateResponseImplCopyWithImpl(_$ProductCreateResponseImpl _value,
      $Res Function(_$ProductCreateResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$ProductCreateResponseImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCreateResponseImpl implements _ProductCreateResponse {
  const _$ProductCreateResponseImpl({required this.productId});

  factory _$ProductCreateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCreateResponseImplFromJson(json);

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductCreateResponse(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCreateResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCreateResponseImplCopyWith<_$ProductCreateResponseImpl>
      get copyWith => __$$ProductCreateResponseImplCopyWithImpl<
          _$ProductCreateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCreateResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductCreateResponse implements ProductCreateResponse {
  const factory _ProductCreateResponse({required final int productId}) =
      _$ProductCreateResponseImpl;

  factory _ProductCreateResponse.fromJson(Map<String, dynamic> json) =
      _$ProductCreateResponseImpl.fromJson;

  @override
  int get productId;
  @override
  @JsonKey(ignore: true)
  _$$ProductCreateResponseImplCopyWith<_$ProductCreateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
