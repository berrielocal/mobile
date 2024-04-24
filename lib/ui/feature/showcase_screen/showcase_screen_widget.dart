import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/ui/ui_kit/catalog_card_list.dart';
import 'package:berrielocal/ui/ui_kit/search_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
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
    return SafeArea(
      child: EntityStateNotifierBuilder(
        listenableEntityState: wm.testShop,
        builder: (context, data) {
          data ??= [];
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SearchWidget(),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: List.generate(
                      5,
                      (index) => CatalogCardList(
                        list: data!,
                      ),
                    ),
                  ),
                )
              ],
            ),
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
