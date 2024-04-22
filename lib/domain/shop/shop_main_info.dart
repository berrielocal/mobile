import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_main_info.freezed.dart';

part 'shop_main_info.g.dart';

@freezed
class ShopMainInfo with _$ShopMainInfo {
  const factory ShopMainInfo({
    String? shopId,
    String? name,
    String? imageUrl,
    double? matchLevel,
    String? email,
    String? phoneNumber,
  }) = _ShopMainInfo;

  factory ShopMainInfo.fromJson(Map<String, dynamic> json) =>
      _$ShopMainInfoFromJson(json);
}