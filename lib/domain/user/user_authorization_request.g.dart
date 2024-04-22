// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authorization_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthorizationRequestImpl _$$UserAuthorizationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAuthorizationRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserAuthorizationRequestImplToJson(
        _$UserAuthorizationRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
