// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtResponseImpl _$$JwtResponseImplFromJson(Map<String, dynamic> json) =>
    _$JwtResponseImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$JwtResponseImplToJson(_$JwtResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
