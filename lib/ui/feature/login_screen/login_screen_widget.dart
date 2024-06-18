import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'login_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for LoginScreen module
@RoutePage()
class LoginScreenWidget extends ElementaryWidget<ILoginScreenWidgetModel> {
  const LoginScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultLoginScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ILoginScreenWidgetModel wm) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Вход',
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
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ваши данные',
                style: AppTypography.personalCardTitle,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: wm.emailController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: AppColor.grey),
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorStyle: TextStyle(color: Colors.red),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите E-mail';
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
              TextFormField(
                controller: wm.passwordController,
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  hintStyle: TextStyle(color: AppColor.grey),
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorStyle: TextStyle(color: Colors.red),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите пароль';
                  }
                  if (value.length < 6) {
                    return 'Пароль должен быть не менее 6 символов';
                  }
                  return null;
                },
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: wm.toPolicy,
                  child: Text(
                    'Нажимая кнопку, Вы соглашаетесь c Правилами и политикой конфиденциальности Компании',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomFilledButton(
                text: 'Войти',
                onTap: () {
                  if (formKey.currentState?.validate() ?? false) {
                    wm.login();
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
