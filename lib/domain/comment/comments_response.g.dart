// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentsResponseImpl _$$CommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentsResponseImpl(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentsResponseImplToJson(
        _$CommentsResponseImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };
