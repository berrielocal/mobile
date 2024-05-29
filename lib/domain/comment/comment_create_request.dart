import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_create_request.g.dart';
part 'comment_create_request.freezed.dart';

@freezed
class CommentCreateRequest with _$CommentCreateRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CommentCreateRequest({
    int? shopId,
    String? text,
    double? rate,
  }) = _CommentCreateRequest;

  factory CommentCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$CommentCreateRequestFromJson(json);
}