import 'package:berrielocal/data/test/dto/test_dto.dart';

import '../test_service_interface.dart';

class MockTestService implements ITestService {
  final List<TestDto> _test = List.generate(
    20,
    (index) => TestDto(id: index, message: "message $index"),
  );

  @override
  Future<List<TestDto>> getTest() async {
    await Future.delayed(const Duration(seconds: 2));
    return _test;
  }
}
