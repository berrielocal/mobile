// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JwtResponse _$JwtResponseFromJson(Map<String, dynamic> json) {
  return _JwtResponse.fromJson(json);
}

/// @nodoc
mixin _$JwtResponse {
  @JsonKey(name: "accessToken")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refreshToken")
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtResponseCopyWith<JwtResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtResponseCopyWith<$Res> {
  factory $JwtResponseCopyWith(
          JwtResponse value, $Res Function(JwtResponse) then) =
      _$JwtResponseCopyWithImpl<$Res, JwtResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "accessToken") String accessToken,
      @JsonKey(name: "refreshToken") String refreshToken});
}

/// @nodoc
class _$JwtResponseCopyWithImpl<$Res, $Val extends JwtResponse>
    implements $JwtResponseCopyWith<$Res> {
  _$JwtResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtResponseImplCopyWith<$Res>
    implements $JwtResponseCopyWith<$Res> {
  factory _$$JwtResponseImplCopyWith(
          _$JwtResponseImpl value, $Res Function(_$JwtResponseImpl) then) =
      __$$JwtResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "accessToken") String accessToken,
      @JsonKey(name: "refreshToken") String refreshToken});
}

/// @nodoc
class __$$JwtResponseImplCopyWithImpl<$Res>
    extends _$JwtResponseCopyWithImpl<$Res, _$JwtResponseImpl>
    implements _$$JwtResponseImplCopyWith<$Res> {
  __$$JwtResponseImplCopyWithImpl(
      _$JwtResponseImpl _value, $Res Function(_$JwtResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$JwtResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$JwtResponseImpl implements _JwtResponse {
  const _$JwtResponseImpl(
      {@JsonKey(name: "accessToken") required this.accessToken,
      @JsonKey(name: "refreshToken") required this.refreshToken});

  factory _$JwtResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtResponseImplFromJson(json);

  @override
  @JsonKey(name: "accessToken")
  final String accessToken;
  @override
  @JsonKey(name: "refreshToken")
  final String refreshToken;

  @override
  String toString() {
    return 'JwtResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtResponseImplCopyWith<_$JwtResponseImpl> get copyWith =>
      __$$JwtResponseImplCopyWithImpl<_$JwtResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtResponseImplToJson(
      this,
    );
  }
}

abstract class _JwtResponse implements JwtResponse {
  const factory _JwtResponse(
          {@JsonKey(name: "accessToken") required final String accessToken,
          @JsonKey(name: "refreshToken") required final String refreshToken}) =
      _$JwtResponseImpl;

  factory _JwtResponse.fromJson(Map<String, dynamic> json) =
      _$JwtResponseImpl.fromJson;

  @override
  @JsonKey(name: "accessToken")
  String get accessToken;
  @override
  @JsonKey(name: "refreshToken")
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$JwtResponseImplCopyWith<_$JwtResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
