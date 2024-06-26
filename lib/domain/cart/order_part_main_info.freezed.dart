// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_part_main_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPartMainInfo _$OrderPartMainInfoFromJson(Map<String, dynamic> json) {
  return _OrderPartMainInfo.fromJson(json);
}

/// @nodoc
mixin _$OrderPartMainInfo {
  int? get productId => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  int? get orderPartId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get orderedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPartMainInfoCopyWith<OrderPartMainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPartMainInfoCopyWith<$Res> {
  factory $OrderPartMainInfoCopyWith(
          OrderPartMainInfo value, $Res Function(OrderPartMainInfo) then) =
      _$OrderPartMainInfoCopyWithImpl<$Res, OrderPartMainInfo>;
  @useResult
  $Res call(
      {int? productId,
      int? size,
      int? orderPartId,
      String status,
      DateTime? updatedAt,
      DateTime? orderedAt});
}

/// @nodoc
class _$OrderPartMainInfoCopyWithImpl<$Res, $Val extends OrderPartMainInfo>
    implements $OrderPartMainInfoCopyWith<$Res> {
  _$OrderPartMainInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? size = freezed,
    Object? orderPartId = freezed,
    Object? status = null,
    Object? updatedAt = freezed,
    Object? orderedAt = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      orderPartId: freezed == orderPartId
          ? _value.orderPartId
          : orderPartId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderedAt: freezed == orderedAt
          ? _value.orderedAt
          : orderedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPartMainInfoImplCopyWith<$Res>
    implements $OrderPartMainInfoCopyWith<$Res> {
  factory _$$OrderPartMainInfoImplCopyWith(_$OrderPartMainInfoImpl value,
          $Res Function(_$OrderPartMainInfoImpl) then) =
      __$$OrderPartMainInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? productId,
      int? size,
      int? orderPartId,
      String status,
      DateTime? updatedAt,
      DateTime? orderedAt});
}

/// @nodoc
class __$$OrderPartMainInfoImplCopyWithImpl<$Res>
    extends _$OrderPartMainInfoCopyWithImpl<$Res, _$OrderPartMainInfoImpl>
    implements _$$OrderPartMainInfoImplCopyWith<$Res> {
  __$$OrderPartMainInfoImplCopyWithImpl(_$OrderPartMainInfoImpl _value,
      $Res Function(_$OrderPartMainInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? size = freezed,
    Object? orderPartId = freezed,
    Object? status = null,
    Object? updatedAt = freezed,
    Object? orderedAt = freezed,
  }) {
    return _then(_$OrderPartMainInfoImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      orderPartId: freezed == orderPartId
          ? _value.orderPartId
          : orderPartId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderedAt: freezed == orderedAt
          ? _value.orderedAt
          : orderedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPartMainInfoImpl implements _OrderPartMainInfo {
  const _$OrderPartMainInfoImpl(
      {this.productId,
      this.size,
      this.orderPartId,
      required this.status,
      this.updatedAt,
      this.orderedAt});

  factory _$OrderPartMainInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPartMainInfoImplFromJson(json);

  @override
  final int? productId;
  @override
  final int? size;
  @override
  final int? orderPartId;
  @override
  final String status;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? orderedAt;

  @override
  String toString() {
    return 'OrderPartMainInfo(productId: $productId, size: $size, orderPartId: $orderPartId, status: $status, updatedAt: $updatedAt, orderedAt: $orderedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPartMainInfoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.orderPartId, orderPartId) ||
                other.orderPartId == orderPartId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.orderedAt, orderedAt) ||
                other.orderedAt == orderedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, productId, size, orderPartId, status, updatedAt, orderedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPartMainInfoImplCopyWith<_$OrderPartMainInfoImpl> get copyWith =>
      __$$OrderPartMainInfoImplCopyWithImpl<_$OrderPartMainInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPartMainInfoImplToJson(
      this,
    );
  }
}

abstract class _OrderPartMainInfo implements OrderPartMainInfo {
  const factory _OrderPartMainInfo(
      {final int? productId,
      final int? size,
      final int? orderPartId,
      required final String status,
      final DateTime? updatedAt,
      final DateTime? orderedAt}) = _$OrderPartMainInfoImpl;

  factory _OrderPartMainInfo.fromJson(Map<String, dynamic> json) =
      _$OrderPartMainInfoImpl.fromJson;

  @override
  int? get productId;
  @override
  int? get size;
  @override
  int? get orderPartId;
  @override
  String get status;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get orderedAt;
  @override
  @JsonKey(ignore: true)
  _$$OrderPartMainInfoImplCopyWith<_$OrderPartMainInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
