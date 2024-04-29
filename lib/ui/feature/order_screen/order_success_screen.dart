import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class OrderSuccessScreenWidget extends StatelessWidget {
  const OrderSuccessScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Заказ №123',
          style: AppTypography.personalCardTitle,
        ),
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.comfortable,
          onPressed: context.router.popUntilRoot,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.black,
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/success.svg'),
              const Text(
                'ОФОМРМЛЕН!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColor.green),
              ),
              const Text(
                'В бижайшее время по указанным данным с вами свяжется(-утся) оператор(-ы) магазин(-ов) для подтверждения заказа.',
                textAlign: TextAlign.center,
              ),
              CustomFilledButton(
                text: 'Перейти в мои заказы',
                onTap: () => context.router.navigate(OrderHistoryRoute()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
