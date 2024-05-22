import 'package:berrielocal/domain/shop/shop_main_info.dart';
// TODO
class MockShopService {
  final List<ShopMainInfo> list = [
    const ShopMainInfo(
      shopId: '1',
      name: 'Название магазина',
      imageUrl: 'assets/image/empty_photo.png',
      matchLevel: 90,
    ),
    const ShopMainInfo(
      shopId: '2',
      name: 'Название магазина',
      imageUrl: 'assets/image/empty_photo.png',
      matchLevel: 90,
    ),
    const ShopMainInfo(
      shopId: '3',
      name: 'Название магазина',
      imageUrl: 'assets/image/empty_photo.png',
      matchLevel: 90,
    ),
    const ShopMainInfo(
      shopId: '4',
      name: 'Название магазина',
      imageUrl: 'assets/image/empty_photo.png',
      matchLevel: 90,
    ),
  ];

  Future<List<ShopMainInfo>> getShops() async {
    await Future.delayed(const Duration(seconds: 2));
    return list;
  }
}
