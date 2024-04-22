// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_authorization_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthorizationRequest _$UserAuthorizationRequestFromJson(
    Map<String, dynamic> json) {
  return _UserAuthorizationRequest.fromJson(json);
}

/// @nodoc
mixin _$UserAuthorizationRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthorizationRequestCopyWith<UserAuthorizationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthorizationRequestCopyWith<$Res> {
  factory $UserAuthorizationRequestCopyWith(UserAuthorizationRequest value,
          $Res Function(UserAuthorizationRequest) then) =
      _$UserAuthorizationRequestCopyWithImpl<$Res, UserAuthorizationRequest>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserAuthorizationRequestCopyWithImpl<$Res,
        $Val extends UserAuthorizationRequest>
    implements $UserAuthorizationRequestCopyWith<$Res> {
  _$UserAuthorizationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthorizationRequestImplCopyWith<$Res>
    implements $UserAuthorizationRequestCopyWith<$Res> {
  factory _$$UserAuthorizationRequestImplCopyWith(
          _$UserAuthorizationRequestImpl value,
          $Res Function(_$UserAuthorizationRequestImpl) then) =
      __$$UserAuthorizationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserAuthorizationRequestImplCopyWithImpl<$Res>
    extends _$UserAuthorizationRequestCopyWithImpl<$Res,
        _$UserAuthorizationRequestImpl>
    implements _$$UserAuthorizationRequestImplCopyWith<$Res> {
  __$$UserAuthorizationRequestImplCopyWithImpl(
      _$UserAuthorizationRequestImpl _value,
      $Res Function(_$UserAuthorizationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserAuthorizationRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$UserAuthorizationRequestImpl implements _UserAuthorizationRequest {
  const _$UserAuthorizationRequestImpl(
      {required this.email, required this.password});

  factory _$UserAuthorizationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthorizationRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthorizationRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthorizationRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthorizationRequestImplCopyWith<_$UserAuthorizationRequestImpl>
      get copyWith => __$$UserAuthorizationRequestImplCopyWithImpl<
          _$UserAuthorizationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthorizationRequestImplToJson(
      this,
    );
  }
}

abstract class _UserAuthorizationRequest implements UserAuthorizationRequest {
  const factory _UserAuthorizationRequest(
      {required final String email,
      required final String password}) = _$UserAuthorizationRequestImpl;

  factory _UserAuthorizationRequest.fromJson(Map<String, dynamic> json) =
      _$UserAuthorizationRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthorizationRequestImplCopyWith<_$UserAuthorizationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
