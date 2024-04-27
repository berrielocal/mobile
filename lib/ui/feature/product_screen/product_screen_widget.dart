import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'product_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProductScreen module
@RoutePage()
class ProductScreenWidget extends ElementaryWidget<IProductScreenWidgetModel> {
  const ProductScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProductScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProductScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Название категории',
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
        minimum: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/empty_photo.png',
                  height: 273,
                  width: 273,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Название продукта',
                    style: AppTypography.personalCardTitle,
                  ),
                  Spacer(),
                  Text(
                    Decimal.fromInt(1500).formatMoney(),
                    style: AppTypography.personalCardTitle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                  6,
                  (index) => const Text('Информация: информация, информация'),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/favorite.svg'),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 270,
                    child: CustomFilledButton(
                      text: 'В КОРЗИНЕ',
                      onTap: () {
                        wm.toCart();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
