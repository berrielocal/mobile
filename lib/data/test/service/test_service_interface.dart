import 'package:berrielocal/data/test/dto/test_dto.dart';

abstract class ITestService{
  Future<List<TestDto>> getTest();
}