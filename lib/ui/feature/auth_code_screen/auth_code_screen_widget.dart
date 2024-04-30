import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_code_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthCodeScreen module
@RoutePage()
class AuthCodeScreenWidget
    extends ElementaryWidget<IAuthCodeScreenWidgetModel> {
  const AuthCodeScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthCodeScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthCodeScreenWidgetModel wm) {
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
        minimum: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Подтверждение почты',
              style: AppTypography.personalCardTitle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Мы отправили письмо с кодом на**********@gmail.com',
              style: AppTypography.personalCardTitle.copyWith(fontSize: 12),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextfield(
              controller: wm.emailController,
              autofocus: false,
              textFieldBorderRadius: 0,
              hint: 'Код подтверждения',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Нажимая кнопку, Вы соглашаетесь c Правилами и политикой конфиденциальности Компании',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomFilledButton(
              text: 'Зарегистрироваться',
              onTap: wm.toProfile,
            )
          ],
        ),
      ),
    );
  }
}