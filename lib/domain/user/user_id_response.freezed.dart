// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserIdResponse _$UserIdResponseFromJson(Map<String, dynamic> json) {
  return _UserIdResponse.fromJson(json);
}

/// @nodoc
mixin _$UserIdResponse {
  int? get shopId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdResponseCopyWith<UserIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdResponseCopyWith<$Res> {
  factory $UserIdResponseCopyWith(
          UserIdResponse value, $Res Function(UserIdResponse) then) =
      _$UserIdResponseCopyWithImpl<$Res, UserIdResponse>;
  @useResult
  $Res call({int? shopId});
}

/// @nodoc
class _$UserIdResponseCopyWithImpl<$Res, $Val extends UserIdResponse>
    implements $UserIdResponseCopyWith<$Res> {
  _$UserIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIdResponseImplCopyWith<$Res>
    implements $UserIdResponseCopyWith<$Res> {
  factory _$$UserIdResponseImplCopyWith(_$UserIdResponseImpl value,
          $Res Function(_$UserIdResponseImpl) then) =
      __$$UserIdResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? shopId});
}

/// @nodoc
class __$$UserIdResponseImplCopyWithImpl<$Res>
    extends _$UserIdResponseCopyWithImpl<$Res, _$UserIdResponseImpl>
    implements _$$UserIdResponseImplCopyWith<$Res> {
  __$$UserIdResponseImplCopyWithImpl(
      _$UserIdResponseImpl _value, $Res Function(_$UserIdResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopId = freezed,
  }) {
    return _then(_$UserIdResponseImpl(
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdResponseImpl implements _UserIdResponse {
  const _$UserIdResponseImpl({this.shopId});

  factory _$UserIdResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdResponseImplFromJson(json);

  @override
  final int? shopId;

  @override
  String toString() {
    return 'UserIdResponse(shopId: $shopId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdResponseImpl &&
            (identical(other.shopId, shopId) || other.shopId == shopId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdResponseImplCopyWith<_$UserIdResponseImpl> get copyWith =>
      __$$UserIdResponseImplCopyWithImpl<_$UserIdResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdResponseImplToJson(
      this,
    );
  }
}

abstract class _UserIdResponse implements UserIdResponse {
  const factory _UserIdResponse({final int? shopId}) = _$UserIdResponseImpl;

  factory _UserIdResponse.fromJson(Map<String, dynamic> json) =
      _$UserIdResponseImpl.fromJson;

  @override
  int? get shopId;
  @override
  @JsonKey(ignore: true)
  _$$UserIdResponseImplCopyWith<_$UserIdResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
