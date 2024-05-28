import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_update_request.g.dart';
part 'shop_update_request.freezed.dart';

@freezed
class ShopUpdateRequest with _$ShopUpdateRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ShopUpdateRequest({
    String? name,
    String? imageUrl,
    String? email,
    String? phoneNumber,
    List<String>? categories,
  }) = _ShopUpdateRequest;

  factory ShopUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ShopUpdateRequestFromJson(json);
}
