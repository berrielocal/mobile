// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_refresh_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRefreshResponse _$UserRefreshResponseFromJson(Map<String, dynamic> json) {
  return _UserRefreshResponse.fromJson(json);
}

/// @nodoc
mixin _$UserRefreshResponse {
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRefreshResponseCopyWith<UserRefreshResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRefreshResponseCopyWith<$Res> {
  factory $UserRefreshResponseCopyWith(
          UserRefreshResponse value, $Res Function(UserRefreshResponse) then) =
      _$UserRefreshResponseCopyWithImpl<$Res, UserRefreshResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "access_token") String accessToken});
}

/// @nodoc
class _$UserRefreshResponseCopyWithImpl<$Res, $Val extends UserRefreshResponse>
    implements $UserRefreshResponseCopyWith<$Res> {
  _$UserRefreshResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRefreshResponseImplCopyWith<$Res>
    implements $UserRefreshResponseCopyWith<$Res> {
  factory _$$UserRefreshResponseImplCopyWith(_$UserRefreshResponseImpl value,
          $Res Function(_$UserRefreshResponseImpl) then) =
      __$$UserRefreshResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "access_token") String accessToken});
}

/// @nodoc
class __$$UserRefreshResponseImplCopyWithImpl<$Res>
    extends _$UserRefreshResponseCopyWithImpl<$Res, _$UserRefreshResponseImpl>
    implements _$$UserRefreshResponseImplCopyWith<$Res> {
  __$$UserRefreshResponseImplCopyWithImpl(_$UserRefreshResponseImpl _value,
      $Res Function(_$UserRefreshResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$UserRefreshResponseImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$UserRefreshResponseImpl implements _UserRefreshResponse {
  const _$UserRefreshResponseImpl(
      {@JsonKey(name: "refresh_token") required this.refreshToken,
      @JsonKey(name: "access_token") required this.accessToken});

  factory _$UserRefreshResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRefreshResponseImplFromJson(json);

  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  @JsonKey(name: "access_token")
  final String accessToken;

  @override
  String toString() {
    return 'UserRefreshResponse(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRefreshResponseImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRefreshResponseImplCopyWith<_$UserRefreshResponseImpl> get copyWith =>
      __$$UserRefreshResponseImplCopyWithImpl<_$UserRefreshResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRefreshResponseImplToJson(
      this,
    );
  }
}

abstract class _UserRefreshResponse implements UserRefreshResponse {
  const factory _UserRefreshResponse(
          {@JsonKey(name: "refresh_token") required final String refreshToken,
          @JsonKey(name: "access_token") required final String accessToken}) =
      _$UserRefreshResponseImpl;

  factory _UserRefreshResponse.fromJson(Map<String, dynamic> json) =
      _$UserRefreshResponseImpl.fromJson;

  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$UserRefreshResponseImplCopyWith<_$UserRefreshResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
