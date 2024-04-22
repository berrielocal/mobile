import 'package:berrielocal/data/service/shop_service.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for ShowcaseScreen module
class ShowcaseScreenModel extends ElementaryModel {
  final MockShopService _mockShopService;
  ShowcaseScreenModel(
    ErrorHandler errorHandler,
    this._mockShopService,
  ) : super(errorHandler: errorHandler);

  Future<List<ShopMainInfo>> getShops() async {
    try {
      final res = await _mockShopService.getShops();
      return res;
    } on Exception catch (e) {
      handleError(e);
      rethrow;
    }
  }
}
