// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_part_by_shop_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPartByShopIdResponse _$OrderPartByShopIdResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderPartByShopIdResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderPartByShopIdResponse {
  List<OrderPartMainInfo> get orderParts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPartByShopIdResponseCopyWith<OrderPartByShopIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPartByShopIdResponseCopyWith<$Res> {
  factory $OrderPartByShopIdResponseCopyWith(OrderPartByShopIdResponse value,
          $Res Function(OrderPartByShopIdResponse) then) =
      _$OrderPartByShopIdResponseCopyWithImpl<$Res, OrderPartByShopIdResponse>;
  @useResult
  $Res call({List<OrderPartMainInfo> orderParts});
}

/// @nodoc
class _$OrderPartByShopIdResponseCopyWithImpl<$Res,
        $Val extends OrderPartByShopIdResponse>
    implements $OrderPartByShopIdResponseCopyWith<$Res> {
  _$OrderPartByShopIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderParts = null,
  }) {
    return _then(_value.copyWith(
      orderParts: null == orderParts
          ? _value.orderParts
          : orderParts // ignore: cast_nullable_to_non_nullable
              as List<OrderPartMainInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPartByShopIdResponseImplCopyWith<$Res>
    implements $OrderPartByShopIdResponseCopyWith<$Res> {
  factory _$$OrderPartByShopIdResponseImplCopyWith(
          _$OrderPartByShopIdResponseImpl value,
          $Res Function(_$OrderPartByShopIdResponseImpl) then) =
      __$$OrderPartByShopIdResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderPartMainInfo> orderParts});
}

/// @nodoc
class __$$OrderPartByShopIdResponseImplCopyWithImpl<$Res>
    extends _$OrderPartByShopIdResponseCopyWithImpl<$Res,
        _$OrderPartByShopIdResponseImpl>
    implements _$$OrderPartByShopIdResponseImplCopyWith<$Res> {
  __$$OrderPartByShopIdResponseImplCopyWithImpl(
      _$OrderPartByShopIdResponseImpl _value,
      $Res Function(_$OrderPartByShopIdResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderParts = null,
  }) {
    return _then(_$OrderPartByShopIdResponseImpl(
      orderParts: null == orderParts
          ? _value._orderParts
          : orderParts // ignore: cast_nullable_to_non_nullable
              as List<OrderPartMainInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPartByShopIdResponseImpl implements _OrderPartByShopIdResponse {
  const _$OrderPartByShopIdResponseImpl(
      {required final List<OrderPartMainInfo> orderParts})
      : _orderParts = orderParts;

  factory _$OrderPartByShopIdResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPartByShopIdResponseImplFromJson(json);

  final List<OrderPartMainInfo> _orderParts;
  @override
  List<OrderPartMainInfo> get orderParts {
    if (_orderParts is EqualUnmodifiableListView) return _orderParts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderParts);
  }

  @override
  String toString() {
    return 'OrderPartByShopIdResponse(orderParts: $orderParts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPartByShopIdResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._orderParts, _orderParts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderParts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPartByShopIdResponseImplCopyWith<_$OrderPartByShopIdResponseImpl>
      get copyWith => __$$OrderPartByShopIdResponseImplCopyWithImpl<
          _$OrderPartByShopIdResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPartByShopIdResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderPartByShopIdResponse implements OrderPartByShopIdResponse {
  const factory _OrderPartByShopIdResponse(
          {required final List<OrderPartMainInfo> orderParts}) =
      _$OrderPartByShopIdResponseImpl;

  factory _OrderPartByShopIdResponse.fromJson(Map<String, dynamic> json) =
      _$OrderPartByShopIdResponseImpl.fromJson;

  @override
  List<OrderPartMainInfo> get orderParts;
  @override
  @JsonKey(ignore: true)
  _$$OrderPartByShopIdResponseImplCopyWith<_$OrderPartByShopIdResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
