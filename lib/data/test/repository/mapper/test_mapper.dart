import 'package:berrielocal/data/test/dto/test_dto.dart';
import 'package:berrielocal/domain/test/test.dart';

Test mapTest(TestDto dto) {
  return Test(
    id: dto.id,
    message: dto.message,
  );
}
