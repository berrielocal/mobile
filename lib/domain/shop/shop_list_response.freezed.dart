// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopListResponse _$ShopListResponseFromJson(Map<String, dynamic> json) {
  return _ShopListResponse.fromJson(json);
}

/// @nodoc
mixin _$ShopListResponse {
  Map<String, List<ShopMainInfo>> get shops =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopListResponseCopyWith<ShopListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopListResponseCopyWith<$Res> {
  factory $ShopListResponseCopyWith(
          ShopListResponse value, $Res Function(ShopListResponse) then) =
      _$ShopListResponseCopyWithImpl<$Res, ShopListResponse>;
  @useResult
  $Res call({Map<String, List<ShopMainInfo>> shops});
}

/// @nodoc
class _$ShopListResponseCopyWithImpl<$Res, $Val extends ShopListResponse>
    implements $ShopListResponseCopyWith<$Res> {
  _$ShopListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
  }) {
    return _then(_value.copyWith(
      shops: null == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ShopMainInfo>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopListResponseImplCopyWith<$Res>
    implements $ShopListResponseCopyWith<$Res> {
  factory _$$ShopListResponseImplCopyWith(_$ShopListResponseImpl value,
          $Res Function(_$ShopListResponseImpl) then) =
      __$$ShopListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<ShopMainInfo>> shops});
}

/// @nodoc
class __$$ShopListResponseImplCopyWithImpl<$Res>
    extends _$ShopListResponseCopyWithImpl<$Res, _$ShopListResponseImpl>
    implements _$$ShopListResponseImplCopyWith<$Res> {
  __$$ShopListResponseImplCopyWithImpl(_$ShopListResponseImpl _value,
      $Res Function(_$ShopListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shops = null,
  }) {
    return _then(_$ShopListResponseImpl(
      shops: null == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ShopMainInfo>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopListResponseImpl implements _ShopListResponse {
  const _$ShopListResponseImpl(
      {required final Map<String, List<ShopMainInfo>> shops})
      : _shops = shops;

  factory _$ShopListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopListResponseImplFromJson(json);

  final Map<String, List<ShopMainInfo>> _shops;
  @override
  Map<String, List<ShopMainInfo>> get shops {
    if (_shops is EqualUnmodifiableMapView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_shops);
  }

  @override
  String toString() {
    return 'ShopListResponse(shops: $shops)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopListResponseImpl &&
            const DeepCollectionEquality().equals(other._shops, _shops));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shops));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopListResponseImplCopyWith<_$ShopListResponseImpl> get copyWith =>
      __$$ShopListResponseImplCopyWithImpl<_$ShopListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopListResponseImplToJson(
      this,
    );
  }
}

abstract class _ShopListResponse implements ShopListResponse {
  const factory _ShopListResponse(
          {required final Map<String, List<ShopMainInfo>> shops}) =
      _$ShopListResponseImpl;

  factory _ShopListResponse.fromJson(Map<String, dynamic> json) =
      _$ShopListResponseImpl.fromJson;

  @override
  Map<String, List<ShopMainInfo>> get shops;
  @override
  @JsonKey(ignore: true)
  _$$ShopListResponseImplCopyWith<_$ShopListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
