// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_main_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopMainInfo _$ShopMainInfoFromJson(Map<String, dynamic> json) {
  return _ShopMainInfo.fromJson(json);
}

/// @nodoc
mixin _$ShopMainInfo {
  String? get shopId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get matchLevel => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopMainInfoCopyWith<ShopMainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopMainInfoCopyWith<$Res> {
  factory $ShopMainInfoCopyWith(
          ShopMainInfo value, $Res Function(ShopMainInfo) then) =
      _$ShopMainInfoCopyWithImpl<$Res, ShopMainInfo>;
  @useResult
  $Res call(
      {String? shopId,
      String? name,
      String? imageUrl,
      double? matchLevel,
      String? email,
      String? phoneNumber});
}

/// @nodoc
class _$ShopMainInfoCopyWithImpl<$Res, $Val extends ShopMainInfo>
    implements $ShopMainInfoCopyWith<$Res> {
  _$ShopMainInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? matchLevel = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      matchLevel: freezed == matchLevel
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopMainInfoImplCopyWith<$Res>
    implements $ShopMainInfoCopyWith<$Res> {
  factory _$$ShopMainInfoImplCopyWith(
          _$ShopMainInfoImpl value, $Res Function(_$ShopMainInfoImpl) then) =
      __$$ShopMainInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? shopId,
      String? name,
      String? imageUrl,
      double? matchLevel,
      String? email,
      String? phoneNumber});
}

/// @nodoc
class __$$ShopMainInfoImplCopyWithImpl<$Res>
    extends _$ShopMainInfoCopyWithImpl<$Res, _$ShopMainInfoImpl>
    implements _$$ShopMainInfoImplCopyWith<$Res> {
  __$$ShopMainInfoImplCopyWithImpl(
      _$ShopMainInfoImpl _value, $Res Function(_$ShopMainInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? matchLevel = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$ShopMainInfoImpl(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      matchLevel: freezed == matchLevel
          ? _value.matchLevel
          : matchLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopMainInfoImpl implements _ShopMainInfo {
  const _$ShopMainInfoImpl(
      {this.shopId,
      this.name,
      this.imageUrl,
      this.matchLevel,
      this.email,
      this.phoneNumber});

  factory _$ShopMainInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopMainInfoImplFromJson(json);

  @override
  final String? shopId;
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final double? matchLevel;
  @override
  final String? email;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'ShopMainInfo(shopId: $shopId, name: $name, imageUrl: $imageUrl, matchLevel: $matchLevel, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopMainInfoImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.matchLevel, matchLevel) ||
                other.matchLevel == matchLevel) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, shopId, name, imageUrl, matchLevel, email, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopMainInfoImplCopyWith<_$ShopMainInfoImpl> get copyWith =>
      __$$ShopMainInfoImplCopyWithImpl<_$ShopMainInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopMainInfoImplToJson(
      this,
    );
  }
}

abstract class _ShopMainInfo implements ShopMainInfo {
  const factory _ShopMainInfo(
      {final String? shopId,
      final String? name,
      final String? imageUrl,
      final double? matchLevel,
      final String? email,
      final String? phoneNumber}) = _$ShopMainInfoImpl;

  factory _ShopMainInfo.fromJson(Map<String, dynamic> json) =
      _$ShopMainInfoImpl.fromJson;

  @override
  String? get shopId;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  double? get matchLevel;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$ShopMainInfoImplCopyWith<_$ShopMainInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
