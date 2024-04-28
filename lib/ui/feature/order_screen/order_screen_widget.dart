import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'order_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderScreen module
@RoutePage()
class OrderScreenWidget extends ElementaryWidget<IOrderScreenWidgetModel> {
  const OrderScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOrderScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOrderScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Оформление заказ',
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
        minimum: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Данные получателя',
                  style: AppTypography.personalCardTitle,
                ),
                //TODO: maybe use Gap() 2much SizedBox
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                  controller: wm.emailController,
                  autofocus: false,
                  textFieldBorderRadius: 0,
                  hint: 'Имя Фамилия',
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
                  height: 15,
                ),
                const Text(
                  'Адрес доставки',
                  style: AppTypography.personalCardTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextfield(
                  controller: wm.emailController,
                  autofocus: false,
                  textFieldBorderRadius: 0,
                  hint: 'г. Воронеж, ул. Мира, д. 5',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Способ оплаты',
                  style: AppTypography.personalCardTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset(
                      filterQuality: FilterQuality.high,
                      'assets/image/payment.png',
                      width: 360,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/info.svg'),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                      ),
                      child: Text(
                        'Время доставки и способ опалты обговаривается\nс магазином при подтверждении заказа',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Text('Товары'),
                    const Spacer(),
                    Text(Decimal.fromInt(150000).formatMoney()),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  height: 3,
                  thickness: 1,
                  color: Color(0xFFF0F0F0),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text('Итого (без учёта доставки)'),
                    const Spacer(),
                    Text(Decimal.fromInt(150000).formatMoney()),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: CustomFilledButton(
                    text: 'ОФОРМИТЬ ЗАКАЗ',
                    onTap: wm.toResult,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
