// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentResponseImpl _$$CommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentResponseImpl(
      commentId: json['commentId'] as int?,
      customerId: json['customerId'] as int?,
      shopId: json['shopId'] as int?,
      text: json['text'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CommentResponseImplToJson(
        _$CommentResponseImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'customerId': instance.customerId,
      'shopId': instance.shopId,
      'text': instance.text,
      'rate': instance.rate,
    };
