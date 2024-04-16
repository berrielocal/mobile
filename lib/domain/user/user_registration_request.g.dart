// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegistrationRequestImpl _$$UserRegistrationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$UserRegistrationRequestImplToJson(
    _$UserRegistrationRequestImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'password': instance.password,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('imageUrl', instance.imageUrl);
  return val;
}
