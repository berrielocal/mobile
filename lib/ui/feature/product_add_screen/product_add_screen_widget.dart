import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_modify_request.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_alert.dart';
import 'package:berrielocal/ui/ui_kit/custom_counter.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:berrielocal/utils/translation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'product_add_screen_wm.dart';

@RoutePage()
class ProductAddScreenWidget
    extends ElementaryWidget<IProductAddScreenWidgetModel> {
  const ProductAddScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProductAddScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProductAddScreenWidgetModel wm) {
    final formKey = GlobalKey<FormState>();
    final imageUrlNotifier = ValueNotifier<String>('');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Новый продукт',
          style: AppTypography.personalCardTitle,
        ),
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.comfortable,
          onPressed: wm.back,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.black,
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ValueListenableBuilder<String>(
                            valueListenable: imageUrlNotifier,
                            builder: (context, url, _) {
                              return CachedNetworkImage(
                                height: 273,
                                width: 273,
                                imageUrl: url,
                                progressIndicatorBuilder: (_, __, ___) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                                errorWidget: (_, __, ___) {
                                  return Image.asset(
                                    'assets/image/empty_photo.png',
                                  );
                                },
                              );
                            },
                          ),
                          Builder(builder: (
                            BuildContext context,
                          ) {
                            return GestureDetector(
                              onTap: () => customDialog(
                                context,
                                'Вставьте ссылку на изображение',
                                'Формат .png 1024 x 1024',
                                () {
                                  // Update the URL and notify listeners
                                  imageUrlNotifier.value =
                                      wm.urlController.text;
                                },
                                wm.urlController,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: SvgPicture.asset('assets/svg/add.svg'),
                              ),
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Информация о продукте',
                    style: AppTypography.personalCardTitle,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: wm.nameController,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Название продукта',
                      hintStyle: TextStyle(color: AppColor.grey),
                      filled: true,
                      fillColor: Color(0xFFF0F0F0),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      errorStyle: TextStyle(color: Colors.red),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите название продукта';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: wm.infoController,
                    enabled: false,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Информация',
                      hintStyle: TextStyle(color: AppColor.grey),
                      filled: true,
                      fillColor: Color(0xFFF0F0F0),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: wm.categoryController,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Категория',
                      hintStyle: TextStyle(color: AppColor.grey),
                      filled: true,
                      fillColor: Color(0xFFF0F0F0),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      errorStyle: TextStyle(color: Colors.red),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите категорию';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 231,
                        child: TextFormField(
                          controller: wm.costController,
                          autofocus: false,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Цена, ₽',
                            hintStyle: TextStyle(color: AppColor.grey),
                            filled: true,
                            fillColor: Color(0xFFF0F0F0),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            errorStyle: TextStyle(color: Colors.red),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Пожалуйста, введите цену';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Пожалуйста, введите правильное значение цены';
                            }
                            return null;
                          },
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 88,
                        child: TextFormField(
                          controller: wm.unitController,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: 'Кг / шт',
                            hintStyle: TextStyle(color: AppColor.grey),
                            filled: true,
                            fillColor: Color(0xFFF0F0F0),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            errorStyle: TextStyle(color: Colors.red),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ошибка';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomCounter(
                    title: 'Максимальное количество товара в одном заказе',
                    count: wm.count,
                    increase: () => wm.count++,
                    decrease: () => wm.count--,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CustomFilledButton(
                text: 'СОХРАНИТЬ',
                onTap: () {
                  if (formKey.currentState?.validate() ?? false) {
                    wm.addProduct(ProductModifyRequest(
                      name: wm.nameController.text,
                      categories: [wm.categoryController.text.translateRuEn()],
                      cost: double.parse(wm.costController.text),
                      imageUrl: wm.urlController.text,
                      units: wm.unitController.text,
                      minSize: 1,
                      maxSize: wm.count,
                    ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
