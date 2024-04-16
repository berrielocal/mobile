// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegistrationRequest _$UserRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _UserRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRegistrationRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegistrationRequestCopyWith<UserRegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationRequestCopyWith<$Res> {
  factory $UserRegistrationRequestCopyWith(UserRegistrationRequest value,
          $Res Function(UserRegistrationRequest) then) =
      _$UserRegistrationRequestCopyWithImpl<$Res, UserRegistrationRequest>;
  @useResult
  $Res call(
      {String email,
      String password,
      String? name,
      String? phoneNumber,
      String? imageUrl});
}

/// @nodoc
class _$UserRegistrationRequestCopyWithImpl<$Res,
        $Val extends UserRegistrationRequest>
    implements $UserRegistrationRequestCopyWith<$Res> {
  _$UserRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? imageUrl = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegistrationRequestImplCopyWith<$Res>
    implements $UserRegistrationRequestCopyWith<$Res> {
  factory _$$UserRegistrationRequestImplCopyWith(
          _$UserRegistrationRequestImpl value,
          $Res Function(_$UserRegistrationRequestImpl) then) =
      __$$UserRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String? name,
      String? phoneNumber,
      String? imageUrl});
}

/// @nodoc
class __$$UserRegistrationRequestImplCopyWithImpl<$Res>
    extends _$UserRegistrationRequestCopyWithImpl<$Res,
        _$UserRegistrationRequestImpl>
    implements _$$UserRegistrationRequestImplCopyWith<$Res> {
  __$$UserRegistrationRequestImplCopyWithImpl(
      _$UserRegistrationRequestImpl _value,
      $Res Function(_$UserRegistrationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$UserRegistrationRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$UserRegistrationRequestImpl implements _UserRegistrationRequest {
  const _$UserRegistrationRequestImpl(
      {required this.email,
      required this.password,
      this.name,
      this.phoneNumber,
      this.imageUrl});

  factory _$UserRegistrationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'UserRegistrationRequest(email: $email, password: $password, name: $name, phoneNumber: $phoneNumber, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, name, phoneNumber, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationRequestImplCopyWith<_$UserRegistrationRequestImpl>
      get copyWith => __$$UserRegistrationRequestImplCopyWithImpl<
          _$UserRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _UserRegistrationRequest implements UserRegistrationRequest {
  const factory _UserRegistrationRequest(
      {required final String email,
      required final String password,
      final String? name,
      final String? phoneNumber,
      final String? imageUrl}) = _$UserRegistrationRequestImpl;

  factory _UserRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserRegistrationRequestImplCopyWith<_$UserRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
