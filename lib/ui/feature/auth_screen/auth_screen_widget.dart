import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
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
    final _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
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
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: wm.repeatPasswordController,
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Повторите пароль',
                  hintStyle: TextStyle(color: AppColor.grey),
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  errorStyle: TextStyle(color: Colors.red),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, повторите пароль';
                  }
                  if (value != wm.passwordController.text) {
                    return 'Пароли не совпадают';
                  }
                  return null;
                },
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
              TextFormField(
                controller: wm.shopController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Название магазина',
                  hintStyle: TextStyle(color: AppColor.grey),
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  errorStyle: TextStyle(color: Colors.red),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите название магазина';
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
                text: 'Зарегистрироваться',
                onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    wm.authCode();
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
