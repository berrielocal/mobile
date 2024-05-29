import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/product/product_modify_request.dart';
import 'package:berrielocal/extensions/snack_bar.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_add_screen_model.dart';
import 'product_add_screen_widget.dart';

abstract interface class IProductAddScreenWidgetModel implements IWidgetModel {
  void back();
  ProductRepository get productRepository;
  Future<void> addProduct(ProductModifyRequest request);
  late final TextEditingController categoryController;
  late final TextEditingController nameController;
  late final TextEditingController costController;
  late final TextEditingController infoController;
  late final TextEditingController urlController;
  late final TextEditingController unitController;
  late final int count;
  String? validateCategory(String? value);
}

ProductAddScreenWidgetModel defaultProductAddScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ProductAddScreenModel>();
  return ProductAddScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ProductAddScreenWidget
class ProductAddScreenWidgetModel
    extends WidgetModel<ProductAddScreenWidget, ProductAddScreenModel>
    implements IProductAddScreenWidgetModel {
  ProductAddScreenWidgetModel(ProductAddScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  List<String> allowedCategories = [
    'FISH',
    'MEAT',
    'VEGETABLES',
    'FRUITS',
    'NUTS',
    'MUSHROOMS',
    'EXOTIC',
  ];

  @override
  String? validateCategory(String? value) {
    if (value == null || value.isEmpty) {
      return 'Пожалуйста, введите категорию';
    }
    if (!allowedCategories.contains(value.toUpperCase())) {
      return 'Пожалуйста, введите существующую категорию';
    }
    return null;
  }

  @override
  Future<void> addProduct(ProductModifyRequest request) async {
    if (!allowedCategories.contains(request.categories?.first)) {
      context.showSnackBar('Введите одну из существующих категорий!');
    }
    try {
      await productRepository.addProduct(request);
    } catch (e) {
      context.showSnackBar(
          'Введите категории из существующего списка и проверьте правильность введенных данных!');
    }
     context.showSnackBar('Товар успешно добавлен! Перезайдите на страницу магазина');
    context.router.pop();
  }

  @override
  ProductRepository productRepository = AppComponents().productRepository;

  @override
  TextEditingController categoryController = TextEditingController();

  @override
  TextEditingController costController = TextEditingController();

  @override
  TextEditingController infoController = TextEditingController();

  @override
  TextEditingController nameController = TextEditingController();

  @override
  int count = 1;

  @override
  TextEditingController urlController = TextEditingController();

  @override
  TextEditingController unitController = TextEditingController();
}
