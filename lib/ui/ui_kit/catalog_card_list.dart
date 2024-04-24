import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/ui/ui_kit/catalog_card.dart';
import 'package:flutter/material.dart';

class CatalogCardList extends StatelessWidget {
  const CatalogCardList({
    super.key,
    required this.list,
  });

  final List<ShopMainInfo> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: list.map((e) {
          return Padding(
            padding: const EdgeInsets.all(8) ,
            child: CatalogCard(shop: e),
          );
        }).toList(),
      ),
    );
  }
}
