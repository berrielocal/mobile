// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentCreateRequestImpl _$$CommentCreateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentCreateRequestImpl(
      shopId: json['shopId'] as int?,
      text: json['text'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CommentCreateRequestImplToJson(
    _$CommentCreateRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shopId', instance.shopId);
  writeNotNull('text', instance.text);
  writeNotNull('rate', instance.rate);
  return val;
}
