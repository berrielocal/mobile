import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_order_status_request.g.dart';
part 'change_order_status_request.freezed.dart';

@freezed
class ChangeOrderStatusRequest with _$ChangeOrderStatusRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ChangeOrderStatusRequest({
    int? orderPartId,
    String? newStatus,
  }) = _ChangeOrderStatusRequest;

  factory ChangeOrderStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeOrderStatusRequestFromJson(json);
}
