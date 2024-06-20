// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderCreateRequest _$OrderCreateRequestFromJson(Map<String, dynamic> json) {
  return _OrderCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderCreateRequest {
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCreateRequestCopyWith<OrderCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreateRequestCopyWith<$Res> {
  factory $OrderCreateRequestCopyWith(
          OrderCreateRequest value, $Res Function(OrderCreateRequest) then) =
      _$OrderCreateRequestCopyWithImpl<$Res, OrderCreateRequest>;
  @useResult
  $Res call({String? address});
}

/// @nodoc
class _$OrderCreateRequestCopyWithImpl<$Res, $Val extends OrderCreateRequest>
    implements $OrderCreateRequestCopyWith<$Res> {
  _$OrderCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderCreateRequestImplCopyWith<$Res>
    implements $OrderCreateRequestCopyWith<$Res> {
  factory _$$OrderCreateRequestImplCopyWith(_$OrderCreateRequestImpl value,
          $Res Function(_$OrderCreateRequestImpl) then) =
      __$$OrderCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address});
}

/// @nodoc
class __$$OrderCreateRequestImplCopyWithImpl<$Res>
    extends _$OrderCreateRequestCopyWithImpl<$Res, _$OrderCreateRequestImpl>
    implements _$$OrderCreateRequestImplCopyWith<$Res> {
  __$$OrderCreateRequestImplCopyWithImpl(_$OrderCreateRequestImpl _value,
      $Res Function(_$OrderCreateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$OrderCreateRequestImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$OrderCreateRequestImpl implements _OrderCreateRequest {
  const _$OrderCreateRequestImpl({this.address});

  factory _$OrderCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCreateRequestImplFromJson(json);

  @override
  final String? address;

  @override
  String toString() {
    return 'OrderCreateRequest(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreateRequestImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreateRequestImplCopyWith<_$OrderCreateRequestImpl> get copyWith =>
      __$$OrderCreateRequestImplCopyWithImpl<_$OrderCreateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _OrderCreateRequest implements OrderCreateRequest {
  const factory _OrderCreateRequest({final String? address}) =
      _$OrderCreateRequestImpl;

  factory _OrderCreateRequest.fromJson(Map<String, dynamic> json) =
      _$OrderCreateRequestImpl.fromJson;

  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$OrderCreateRequestImplCopyWith<_$OrderCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
