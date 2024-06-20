import 'package:berrielocal/data/repository/shop_repository.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for SearchScreen module
class SearchScreenModel extends ElementaryModel {
  final ShopRepository _shopRepository;

  SearchScreenModel(ShopRepository shopRepository, ErrorHandler errorHandler)
      : _shopRepository = shopRepository,
        super(errorHandler: errorHandler);

  Future<List<String>> getShopNames() async {
    final shops = await _shopRepository.getAllShops();
    return shops.shops.values
        .expand((shopList) => shopList!)
        .map((shop) => shop.name ?? '')
        .toList();
  }

  Future<ShopMainInfo?> getShopByName(String name) async {
    final shops = await _shopRepository.getAllShops();
    for (var shopList in shops.shops.values) {
      if (shopList != null) {
        for (var shop in shopList) {
          if (shop.name == name) {
            return shop;
          }
        }
      }
    }
    return null;
  }
}
