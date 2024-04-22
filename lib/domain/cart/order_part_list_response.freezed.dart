// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_part_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPartListResponse _$OrderPartListResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderPartListResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderPartListResponse {
  List<OrderPartMainInfo> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPartListResponseCopyWith<OrderPartListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPartListResponseCopyWith<$Res> {
  factory $OrderPartListResponseCopyWith(OrderPartListResponse value,
          $Res Function(OrderPartListResponse) then) =
      _$OrderPartListResponseCopyWithImpl<$Res, OrderPartListResponse>;
  @useResult
  $Res call({List<OrderPartMainInfo> items});
}

/// @nodoc
class _$OrderPartListResponseCopyWithImpl<$Res,
        $Val extends OrderPartListResponse>
    implements $OrderPartListResponseCopyWith<$Res> {
  _$OrderPartListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderPartMainInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPartListResponseImplCopyWith<$Res>
    implements $OrderPartListResponseCopyWith<$Res> {
  factory _$$OrderPartListResponseImplCopyWith(
          _$OrderPartListResponseImpl value,
          $Res Function(_$OrderPartListResponseImpl) then) =
      __$$OrderPartListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderPartMainInfo> items});
}

/// @nodoc
class __$$OrderPartListResponseImplCopyWithImpl<$Res>
    extends _$OrderPartListResponseCopyWithImpl<$Res,
        _$OrderPartListResponseImpl>
    implements _$$OrderPartListResponseImplCopyWith<$Res> {
  __$$OrderPartListResponseImplCopyWithImpl(_$OrderPartListResponseImpl _value,
      $Res Function(_$OrderPartListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$OrderPartListResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderPartMainInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPartListResponseImpl implements _OrderPartListResponse {
  const _$OrderPartListResponseImpl(
      {required final List<OrderPartMainInfo> items})
      : _items = items;

  factory _$OrderPartListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPartListResponseImplFromJson(json);

  final List<OrderPartMainInfo> _items;
  @override
  List<OrderPartMainInfo> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderPartListResponse(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPartListResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPartListResponseImplCopyWith<_$OrderPartListResponseImpl>
      get copyWith => __$$OrderPartListResponseImplCopyWithImpl<
          _$OrderPartListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPartListResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderPartListResponse implements OrderPartListResponse {
  const factory _OrderPartListResponse(
          {required final List<OrderPartMainInfo> items}) =
      _$OrderPartListResponseImpl;

  factory _OrderPartListResponse.fromJson(Map<String, dynamic> json) =
      _$OrderPartListResponseImpl.fromJson;

  @override
  List<OrderPartMainInfo> get items;
  @override
  @JsonKey(ignore: true)
  _$$OrderPartListResponseImplCopyWith<_$OrderPartListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
