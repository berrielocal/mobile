import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:flutter/material.dart';

void customDialog(
  BuildContext context,
  String title,
  String subtitle,
  VoidCallback? callback,
  TextEditingController? controller,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SizedBox(
          height: 80,
          width: 302,
          child: Column(
            children: [
              Text(subtitle),
              controller != null
                  ? CustomTextfield(
                      controller: controller,
                      autofocus: false,
                      textFieldBorderRadius: 0,
                      hint: 'https://example.com/logo.png',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        actions: <Widget>[
          Center(
            child: TextButton(
              child: Text('OK'),
              onPressed: () {
                callback?.call();
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}
