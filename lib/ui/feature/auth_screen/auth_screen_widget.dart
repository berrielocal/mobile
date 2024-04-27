import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'auth_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthScreen module
@RoutePage()
class AuthScreenWidget extends ElementaryWidget<IAuthScreenWidgetModel> {
  const AuthScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthScreenWidgetModel wm) {
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
        minimum: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ваши данные',
              style: AppTypography.personalCardTitle,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextfield(
              controller: wm.emailController,
              autofocus: false,
              textFieldBorderRadius: 0,
              hint: 'E-mail',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextfield(
              controller: wm.emailController,
              autofocus: false,
              textFieldBorderRadius: 0,
              hint: 'Пароль',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextfield(
              controller: wm.emailController,
              autofocus: false,
              textFieldBorderRadius: 0,
              hint: 'Повторите пароль',
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Данные магазина',
              style: AppTypography.personalCardTitle,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextfield(
              controller: wm.emailController,
              autofocus: false,
              textFieldBorderRadius: 0,
              hint: 'Название магазина',
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Нажимая кнопку, Вы соглашаетесь c Правиламии политикой конфиденциальности Компании',
              ),
            ),
            CustomFilledButton(text: 'Зарегистрироваться')
          ],
        ),
      ),
    );
  }
}
