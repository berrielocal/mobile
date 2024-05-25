// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_refresh_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRefreshRequest _$UserRefreshRequestFromJson(Map<String, dynamic> json) {
  return _UserRefreshRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRefreshRequest {
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRefreshRequestCopyWith<UserRefreshRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRefreshRequestCopyWith<$Res> {
  factory $UserRefreshRequestCopyWith(
          UserRefreshRequest value, $Res Function(UserRefreshRequest) then) =
      _$UserRefreshRequestCopyWithImpl<$Res, UserRefreshRequest>;
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class _$UserRefreshRequestCopyWithImpl<$Res, $Val extends UserRefreshRequest>
    implements $UserRefreshRequestCopyWith<$Res> {
  _$UserRefreshRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRefreshRequestImplCopyWith<$Res>
    implements $UserRefreshRequestCopyWith<$Res> {
  factory _$$UserRefreshRequestImplCopyWith(_$UserRefreshRequestImpl value,
          $Res Function(_$UserRefreshRequestImpl) then) =
      __$$UserRefreshRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class __$$UserRefreshRequestImplCopyWithImpl<$Res>
    extends _$UserRefreshRequestCopyWithImpl<$Res, _$UserRefreshRequestImpl>
    implements _$$UserRefreshRequestImplCopyWith<$Res> {
  __$$UserRefreshRequestImplCopyWithImpl(_$UserRefreshRequestImpl _value,
      $Res Function(_$UserRefreshRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_$UserRefreshRequestImpl(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$UserRefreshRequestImpl implements _UserRefreshRequest {
  const _$UserRefreshRequestImpl({this.refreshToken});

  factory _$UserRefreshRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRefreshRequestImplFromJson(json);

  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'UserRefreshRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRefreshRequestImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRefreshRequestImplCopyWith<_$UserRefreshRequestImpl> get copyWith =>
      __$$UserRefreshRequestImplCopyWithImpl<_$UserRefreshRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRefreshRequestImplToJson(
      this,
    );
  }
}

abstract class _UserRefreshRequest implements UserRefreshRequest {
  const factory _UserRefreshRequest({final String? refreshToken}) =
      _$UserRefreshRequestImpl;

  factory _UserRefreshRequest.fromJson(Map<String, dynamic> json) =
      _$UserRefreshRequestImpl.fromJson;

  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$UserRefreshRequestImplCopyWith<_$UserRefreshRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
