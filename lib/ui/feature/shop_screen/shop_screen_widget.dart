import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/categories_list.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'shop_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ShopScreen module
@RoutePage()
class ShopScreenWidget extends ElementaryWidget<IShopScreenWidgetModel> {
  const ShopScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultShopScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShopScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Название магазина',
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
          child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: 128,
                    height: 128,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black.withOpacity(0.08),
                          offset: const Offset(0, 4),
                          blurRadius: 12,
                          spreadRadius: 0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      'assets/image/empty_photo.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: List.generate(
                        6,
                        (index) => Text('Информация: информация'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CategoriesList(list: ['Фрукты', 'Овощи','Фрукты', 'Овощи','Фрукты', 'Овощи']),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
