import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          child: CachedNetworkImage(
            imageUrl: shop.imageUrl != null && shop.imageUrl!.isNotEmpty
                ? shop.imageUrl!
                : '',
            fadeOutDuration: const Duration(milliseconds: 600),
            fadeInDuration: const Duration(milliseconds: 600),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            placeholderFadeInDuration: const Duration(milliseconds: 500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(shop.name!),
        )
      ],
    );
  }
}
