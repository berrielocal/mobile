import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/ui/ui_kit/cart/basket_card.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'cart_screen_wm.dart';

@RoutePage()
class CartScreenWidget extends ElementaryWidget<ICartScreenWidgetModel> {
  const CartScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultCartScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICartScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: !kIsWeb,
        title: Text(wm.localizations.cart),
        centerTitle: true,
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.cartState,
        loadingBuilder: (_, __) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        builder: (context, data) {
          final products = data ?? [];

          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return BasketCard(
                cartProduct: products[index],
                onTap: () {
                  wm.toProduct();
                },
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: EntityStateNotifierBuilder(
        listenableEntityState: wm.cartState,
        builder: (context, data) {
          final products = data ?? [];
          final theme = Theme.of(context);
          return ValueListenableBuilder(
            valueListenable: wm.cartState,
            builder: (context, val, _) {
              return Visibility(
                visible: products.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Итого',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onBackground,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  text: (Decimal.fromInt(150) ?? Decimal.zero)
                                      .formatMoney(),
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: theme.colorScheme.onBackground,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomFilledButton(
                        onTap: wm.toOrder,
                        text: 'Перейти к оформлению',
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
