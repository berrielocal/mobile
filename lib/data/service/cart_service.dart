import 'package:berrielocal/domain/cart/order_part_main_info.dart';
// TODO
class MockCartService {
  final List<OrderPartMainInfo> list = [
    const OrderPartMainInfo(status: 'IN_CART', size: 1, productId: 1)
  ];

  Future<List<OrderPartMainInfo>> getCart() async {
    await Future.delayed(const Duration(seconds: 2));
    return list;
  }
}
