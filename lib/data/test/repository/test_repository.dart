import 'package:berrielocal/data/test/service/test_service_interface.dart';
import 'package:berrielocal/domain/test/test.dart';

import 'mapper/test_mapper.dart';

class TestRepository{
  final ITestService _service;

  TestRepository(this._service);

  Future<List<Test>> getAll() => _service.getTest().then((value) => value.map(mapTest).toList());
}