import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
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
          'Регистрация',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Данные получателя',
              style: AppTypography.personalCardTitle,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextfield(
              controller: wm.emailController,
              autofocus: false,
              textFieldBorderRadius: 0,
              hint: 'Имя Фамилия',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                  EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                  EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                  EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
                  'assets/image/payment.png',
                  width: 360,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            const Spacer(),
            const CustomFilledButton(text: 'ОФОРМИТЬ ЗАКАЗ')
          ],
        ),
      ),
    );
  }
}
