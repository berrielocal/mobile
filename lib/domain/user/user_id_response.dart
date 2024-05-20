import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_id_response.freezed.dart';

part 'user_id_response.g.dart';

@freezed
class UserIdResponse with _$UserIdResponse {
  const factory UserIdResponse({
    int? shopId,
  }) = _UserIdResponse;

  factory UserIdResponse.fromJson(Map<String, dynamic> json) =>
      _$UserIdResponseFromJson(json);
}
