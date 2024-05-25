import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_refresh_request.g.dart';
part 'user_refresh_request.freezed.dart';

@freezed
class UserRefreshRequest with _$UserRefreshRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UserRefreshRequest({
    String? refreshToken,
  }) = _UserRefreshRequest;

  factory UserRefreshRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRefreshRequestFromJson(json);
}