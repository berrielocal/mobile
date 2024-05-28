import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/showcase/catalog_card.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.list,
  });

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Категории',
          style: AppTypography.label.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 55,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: list.map((e) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: e.length >= 8 ? 104 : 84,
                      height: 35,
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
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFDCECE0),
                            ),
                          ),
                          Text(e),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
