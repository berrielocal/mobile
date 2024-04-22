import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_refresh_response.g.dart';

part 'user_refresh_response.freezed.dart';

@freezed
class UserRefreshResponse with _$UserRefreshResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UserRefreshResponse({
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "access_token") required String accessToken,
  }) = _UserRefreshResponse;

  factory UserRefreshResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRefreshResponseFromJson(json);
}
