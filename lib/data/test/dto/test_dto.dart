import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_dto.freezed.dart';
part 'test_dto.g.dart';

@freezed
class TestDto with _$TestDto {
  const factory TestDto({
    required int id,
    required String message
  }) = _TestDto;

  factory TestDto.fromJson(Map<String, Object?> json) =>
      _$TestDtoFromJson(json);
}