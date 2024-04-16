import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_request.g.dart';
part 'user_registration_request.freezed.dart';

@freezed
class UserRegistrationRequest with _$UserRegistrationRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UserRegistrationRequest({
    required String email,
    required String password,
    String? name,
    String? phoneNumber,
    String? imageUrl,
  }) = _UserRegistrationRequest;

  factory UserRegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationRequestFromJson(json);
}