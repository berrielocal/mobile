import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/showcase/catalog_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCardListVertical extends StatelessWidget {
  const ProductCardListVertical({
    super.key,
    required this.response,
    required this.category,
  });
  final List<ProductResponse> response;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 260,
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            children: response.map((e) {
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: GestureDetector(
                  onTap: () {
                    context.router
                        .navigate(ProductRoute(productId: e.productId!));
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
                            CachedNetworkImage(
                              imageUrl:
                                  e.imageUrl != null && e.imageUrl!.isNotEmpty
                                      ? e.imageUrl!
                                      : '',
                              fadeOutDuration:
                                  const Duration(milliseconds: 600),
                              fadeInDuration: const Duration(milliseconds: 600),
                              fit: BoxFit.fill,
                              height: 192,
                              alignment: Alignment.topCenter,
                              placeholderFadeInDuration:
                                  const Duration(milliseconds: 500),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
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
