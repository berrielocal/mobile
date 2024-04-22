// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_refresh_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRefreshResponseImpl _$$UserRefreshResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRefreshResponseImpl(
      refreshToken: json['refresh_token'] as String,
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$$UserRefreshResponseImplToJson(
        _$UserRefreshResponseImpl instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'access_token': instance.accessToken,
    };
