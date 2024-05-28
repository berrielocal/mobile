import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_list_response.freezed.dart';

part 'shop_list_response.g.dart';

@freezed
class ShopListResponse with _$ShopListResponse {
  const factory ShopListResponse({
    required Map<String, List<ShopMainInfo>?> shops,
  }) = _ShopListResponse;

  factory ShopListResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopListResponseFromJson(json);
}
