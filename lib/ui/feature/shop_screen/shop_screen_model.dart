import 'package:berrielocal/data/service_mock/product_service_mock.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:elementary/elementary.dart';

// TODO: cover with documentation
/// Default Elementary model for ShopScreen module
class ShopScreenModel extends ElementaryModel {
  final MockProductService _mockProductService;
  ShopScreenModel(ErrorHandler errorHandler, this._mockProductService)
      : super(errorHandler: errorHandler);

  Future<ProductListResponse> getProducts() async {
    try {
      final res = await _mockProductService.response;
      return res;
    } on Exception catch (e) {
      handleError(e);
      rethrow;
    }
  }
}
