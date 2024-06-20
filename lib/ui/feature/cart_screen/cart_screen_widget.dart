import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
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
          if (wm.cartState.value.data == null ||
              wm.cartState.value.data!.items.isEmpty) {
            return Center(
              child: Text(
                'Пока здесь пусто :(',
                style: AppTypography.personalCardTitle,
              ),
            );
          }
          return ListView.builder(
            itemCount: data!.items.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(data.items[index].productId.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  wm.removeFromCart(data.items[index].productId!);
                },
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                child: BasketCard(
                  cartProduct: data.items[index],
                  onTap: () {
                    wm.toProduct(data.items[index].productId!);
                  },
                  repository: wm.productRepository,
                  cartRepository: wm.cartRepository,
                  size: data.items[index].size!,
                ),
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
          if (data == null || data.items.isEmpty) {
            return SizedBox.shrink();
          }
          return ValueListenableBuilder(
            valueListenable: wm.cartState,
            builder: (context, val, _) {
              return Visibility(
                visible: data?.items.isNotEmpty ?? false,
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
                                  text: (Decimal.parse(
                                          data?.sum.toString() ?? '0'))
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
                        onTap: () => wm.toOrder(data?.sum),
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
