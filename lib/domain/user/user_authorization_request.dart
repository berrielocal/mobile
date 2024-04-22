import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_authorization_request.g.dart';
part 'user_authorization_request.freezed.dart';

@freezed
class UserAuthorizationRequest with _$UserAuthorizationRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UserAuthorizationRequest({
    required String email,
    required String password,
  }) = _UserAuthorizationRequest;

  factory UserAuthorizationRequest.fromJson(Map<String, dynamic> json) =>
      _$UserAuthorizationRequestFromJson(json);
}