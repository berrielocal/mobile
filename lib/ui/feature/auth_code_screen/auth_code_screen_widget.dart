import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
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
    required this.email,
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthCodeScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String email;

  @override
  Widget build(IAuthCodeScreenWidgetModel wm) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Регистрация',
          style: AppTypography.personalCardTitle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
        child: Form(
          key: _formKey,
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
                'Мы отправили письмо с кодом на $email',
                style: AppTypography.personalCardTitle.copyWith(fontSize: 12),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: wm.emailController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Код подтверждения',
                  hintStyle:
                      TextStyle(color: AppColor.grey),
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  border: OutlineInputBorder( 
                    borderSide: BorderSide.none, 
                  ),
                  errorStyle: TextStyle(color: Colors.red), 
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите код подтверждения';
                  }
                  if (value.length != 5) {
                    return 'Код подтверждения должен быть 5 символов';
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
                height: 15,
              ),
              CustomFilledButton(
                text: 'Зарегистрироваться',
                onTap: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    wm.toProfile();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
