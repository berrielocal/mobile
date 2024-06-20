import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/order_history/order_history_card.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'order_history_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OrderHistoryScreen module
@RoutePage()
class OrderHistoryScreenWidget
    extends ElementaryWidget<IOrderHistoryScreenWidgetModel> {
  const OrderHistoryScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOrderHistoryScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOrderHistoryScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Заказы',
          style: AppTypography.personalCardTitle,
        ),
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.comfortable,
          onPressed: wm.back,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.black,
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                tabs: const [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'ВЫ ЗАКАЗАЛИ',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'ЗАКАЗАЛИ У ВАС',
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
                indicatorColor: Colors.green,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    EntityStateNotifierBuilder(
                      listenableEntityState: wm.customerOrdersState,
                      loadingBuilder: (context, data) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      builder: (context, state) {
                        final orders = state?.orderParts ?? [];
                        if (state?.orderParts == null ||
                            state!.orderParts.isEmpty) {
                          return Center(
                            child: Text('Вы ничего не заказывали'),
                          );
                        }
                        return ListView.builder(
                          itemCount: orders.length,
                          itemBuilder: (context, index) {
                            final order = orders[index];
                            return GestureDetector(
                              onTap: () {
                                wm.toDetailHistory(order);
                              },
                              child: OrderHistoryCard(
                                order: order,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    EntityStateNotifierBuilder(
                      listenableEntityState: wm.shopOrdersState,
                      loadingBuilder: (context, data) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      builder: (context, state) {
                        final orders = state?.orderParts ?? [];
                        if (state?.orderParts == null ||
                            state!.orderParts.isEmpty) {
                          return Center(
                            child: Text('У вас нет заказов'),
                          );
                        }
                        return ListView.builder(
                          itemCount: orders.length,
                          itemBuilder: (context, index) {
                            final order = orders[index];
                            return GestureDetector(
                              onTap: () {
                                wm.toDetailHistory(order);
                              },
                              child: OrderHistoryCard(
                                order: order,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
