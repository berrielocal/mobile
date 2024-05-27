import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';

class MockProductService {
  final response = const ProductListResponse(products: {
    'Category': [
      ProductResponse(),
    ]
  });
  // final response = const ProductListResponse(shopId: 1, products: [
  //   ProductResponse(
  //     productId: 1,
  //     name: 'Название продукта',
  //     cost: 100,
  //     shopId: 1,
  //     units: '1',
  //   ),
  //   ProductResponse(
  //     productId: 2,
  //     name: 'Название продукта',
  //     cost: 200,
  //     shopId: 1,
  //   ),
  //   ProductResponse(
  //     productId: 3,
  //     name: 'Название продукта',
  //     cost: 300,
  //     shopId: 1,
  //   ),
  //   ProductResponse(
  //     productId: 4,
  //     name: 'Название продукта',
  //     cost: 400,
  //     shopId: 1,
  //   ),
  // ]
  // );
}
