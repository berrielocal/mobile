import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_modify_request.g.dart';
part 'product_modify_request.freezed.dart';

@freezed
class ProductModifyRequest with _$ProductModifyRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ProductModifyRequest({
    String? name,
    String? imageUrl,
    double? cost,
    int? maxSize,
    int? minSize,
    String? units,
    List<String>? categories,
  }) = _ProductModifyRequest;

  factory ProductModifyRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductModifyRequestFromJson(json);
}
