import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/ui/ui_kit/catalog_card_list.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'showcase_screen_wm.dart';

@RoutePage()
class ShowcaseScreenWidget
    extends ElementaryWidget<IShowcaseScreenWidgetModel> {
  const ShowcaseScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultShowcaseScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShowcaseScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.testShop,
        builder: (context, data) {
          data ??= [];
          return CatalogCardList(
            list: data,
          );
        },
        loadingBuilder: (context, data) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
