import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
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
    @queryParam required this.sum,
    WidgetModelFactory wmFactory = defaultOrderScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final double? sum;

  @override
  Widget build(IOrderScreenWidgetModel wm) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Оформление заказа',
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
        minimum: const EdgeInsets.only(left: 16, right: 16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Данные получателя',
                    style: AppTypography.personalCardTitle,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: wm.nameController,
                    decoration: InputDecoration(
                      hintText: 'Имя Фамилия',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF0F0F0),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите ваше имя';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: wm.phoneController,
                    decoration: InputDecoration(
                      hintText: 'Телефон',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF0F0F0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите ваш телефон';
                      }
                      if (!RegExp(r'^\+?[0-9]{10,13}$').hasMatch(value)) {
                        return 'Пожалуйста, введите правильный номер телефона';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: wm.emailController,
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      filled: true,
                      fillColor: Color(0xFFF0F0F0),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите ваш E-mail';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Пожалуйста, введите правильный E-mail';
                      }
                      return null;
                    },
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
                  TextFormField(
                    controller: wm.addressController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF0F0F0),
                      hintText: 'г. Воронеж, ул. Мира, д. 5',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Пожалуйста, введите ваш адрес';
                      }
                      return null;
                    },
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
                    height: 16,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/info.svg'),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          'Комиисия сервиса 5% от стоимости заказа без\nучета доставки',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const Text('Товары'),
                      const Spacer(),
                      RichText(
                        text: TextSpan(
                          text: (Decimal.parse(sum.toString())).formatMoney(),
                          style: TextStyle(
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 3,
                    thickness: 1,
                    color: Color(0xFFF0F0F0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text('Итого (без учёта доставки)'),
                      const Spacer(),
                      RichText(
                        text: TextSpan(
                          text:
                              (Decimal.parse((sum! * 105.0 / 100.0).toString()))
                                  .formatMoney(),
                          style: TextStyle(
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 36, bottom: 36),
                    child: CustomFilledButton(
                      text: 'ОФОРМИТЬ ЗАКАЗ',
                      onTap: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          wm.toResult();
                        }
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
