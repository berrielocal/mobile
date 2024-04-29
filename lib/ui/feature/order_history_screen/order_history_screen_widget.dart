import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
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
        child: EntityStateNotifierBuilder(
          listenableEntityState: wm.ordersState,
          loadingBuilder: (context, data) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          builder: (context, state) {
            final orders = state!.items;
            return DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                        pinned: true,
                        leadingWidth: 16,
                        bottom: PreferredSize(
                          preferredSize: TabBar(
                            tabs: List.of(
                              [
                                Text('Вы заказали'),
                                Text('Заказали у вас'),
                              ],
                            ),
                          ).preferredSize,
                          child: Stack(
                            fit: StackFit.passthrough,
                            alignment: Alignment.bottomCenter,
                            children: <Widget>[
                              TabBar(
                                tabs: List.of([
                                  Text('Вы заказали'),
                                  Text('Заказали у вас')
                                ]),
                              ),
                            ],
                          ),
                        )),
                  ];
                },
                body: TabBarView(
                  children: List.of([
                    Container(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
