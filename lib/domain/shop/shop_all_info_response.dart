import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_all_info_response.freezed.dart';

part 'shop_all_info_response.g.dart';

@freezed
class ShopAllInfoResponse with _$ShopAllInfoResponse {
  const factory ShopAllInfoResponse({
    String? shopId,
    String? name,
    String? imageUrl,
  }) = _ShopAllInfoResponse;

  factory ShopAllInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopAllInfoResponseFromJson(json);
}