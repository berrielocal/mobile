import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:berrielocal/ui/ui_kit/product_card/product_card_list_horizontal.dart';
import 'package:berrielocal/ui/ui_kit/product_card/product_card_list_vertical.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'shop_edit_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ShopEditScreen module
@RoutePage()
class ShopEditScreenWidget
    extends ElementaryWidget<IShopEditScreenWidgetModel> {
  final int shopId;
  const ShopEditScreenWidget({
    Key? key,
    @PathParam('shopId') required this.shopId,
    WidgetModelFactory wmFactory = defaultShopEditScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShopEditScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Мой магазин',
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
                        Image.asset(
                          'assets/image/empty_photo.png',
                          height: 273,
                          width: 273,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: SvgPicture.asset('assets/svg/add.svg'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Данные магазина',
                  style: AppTypography.personalCardTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                  controller: wm.emailController,
                  autofocus: false,
                  textFieldBorderRadius: 0,
                  hint: 'Название магазина',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                  controller: wm.emailController,
                  autofocus: false,
                  textFieldBorderRadius: 0,
                  hint: 'Информация',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                  controller: wm.emailController,
                  autofocus: false,
                  textFieldBorderRadius: 0,
                  hint: 'Телефон',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                  controller: wm.emailController,
                  autofocus: false,
                  textFieldBorderRadius: 0,
                  hint: 'E-mail',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Продукция магазина',
                      style: AppTypography.personalCardTitle,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset('assets/svg/add.svg'),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
            EntityStateNotifierBuilder(
              listenableEntityState: wm.testProducts,
              loadingBuilder: (context, data) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              builder: ((context, data) {
                return ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                    1,
                    (index) => ProductCardListVertical(
                      response: [ProductResponse()],
                      category: '',
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
