// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_refresh_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRefreshRequestImpl _$$UserRefreshRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRefreshRequestImpl(
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$UserRefreshRequestImplToJson(
    _$UserRefreshRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refreshToken', instance.refreshToken);
  return val;
}
