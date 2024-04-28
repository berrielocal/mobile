import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/showcase/catalog_card.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCardList extends StatelessWidget {
  const ProductCardList({
    super.key,
    required this.response,
  });

  final ProductListResponse response;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Категория 1',
          style: AppTypography.label.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 260,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: response.products!.map((e) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () {
                    context.router.navigate(ProductRouteWidget());
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 164,
                        height: 192,
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
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              height: 192,
                              e.imageUrl ?? 'assets/image/empty_photo.png',
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                          ),
                          child: Text(e.name!)),
                      Text(Decimal.parse(
                        e.cost.toString(),
                      ).formatMoney()),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
