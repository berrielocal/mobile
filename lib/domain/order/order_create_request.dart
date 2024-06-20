import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_create_request.g.dart';
part 'order_create_request.freezed.dart';

@freezed
class OrderCreateRequest with _$OrderCreateRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory OrderCreateRequest({
    String? address,
  }) = _OrderCreateRequest;

  factory OrderCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderCreateRequestFromJson(json);
}
