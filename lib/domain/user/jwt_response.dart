import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_response.g.dart';

part 'jwt_response.freezed.dart';

@freezed
class JwtResponse with _$JwtResponse {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory JwtResponse({
    @JsonKey(name: "accessToken") required String accessToken,
    @JsonKey(name: "refreshToken") required String refreshToken,
  }) = _JwtResponse;

  factory JwtResponse.fromJson(Map<String, dynamic> json) =>
      _$JwtResponseFromJson(json);
}
