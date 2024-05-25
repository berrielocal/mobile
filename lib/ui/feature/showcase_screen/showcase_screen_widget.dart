import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/shop/shop_list_response.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/ui/ui_kit/showcase/catalog_card_list.dart';
import 'package:berrielocal/ui/ui_kit/search_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          data ??= ShopListResponse(shops: {});
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    wm.openSearch();
                  },
                  child: const SearchWidget(
                    enabled: false,
                    autoFocus: false,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView(
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
