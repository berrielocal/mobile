import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatalogCard extends StatelessWidget {
  const CatalogCard({
    super.key,
    required this.shop,
  });

  final ShopMainInfo shop;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 109,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.08),
                offset: const Offset(0, 4),
                blurRadius: 12,
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Image.asset(
            'assets/image/empty_photo.png',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6),
          child: Text(shop.name!),
        )
      ],
    );
  }
}
