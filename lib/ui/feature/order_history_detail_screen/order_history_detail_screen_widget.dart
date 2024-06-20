import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/order/order_part_by_shop_id_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/order/change_order_status_request.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'order_history_detail_screen_wm.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';

@RoutePage()
class OrderHistoryDetailScreenWidget
    extends ElementaryWidget<IOrderHistoryDetailScreenWidgetModel> {
  const OrderHistoryDetailScreenWidget({
    Key? key,
    @queryParam required this.order,
    WidgetModelFactory wmFactory =
        defaultOrderHistoryDetailScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final OrderPartMainInfo? order;

  @override
  Widget build(IOrderHistoryDetailScreenWidgetModel wm) {
    final dateFormatter = DateFormat('d MMMM yyyy', 'ru');
    String formatDate(DateTime date) {
      return dateFormatter.format(date);
    }

    return StreamBuilder(
      stream: wm.orderRepository.shopOrders,
      builder: (BuildContext context,
          AsyncSnapshot<OrderPartByShopIdResponse> snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Заказ №${order!.productId!}',
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
            child: FutureBuilder<ProductResponse>(
              future: wm.productRepository.getProductById(order!.productId!),
              builder: (BuildContext context,
                  AsyncSnapshot<ProductResponse> snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  final product = snapshot.data!;
                  return ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OrderProductCard(
                            imageUrl: product.imageUrl ?? '',
                            productName: product.name!,
                            quantity:
                                '${order!.size.toString()} ${product.units!}',
                          ),
                          const SizedBox(height: 16),
                          const Divider(),
                          const SizedBox(height: 4),
                          buildRow('Итого', '1 товар'),
                          const SizedBox(height: 4),
                          const Divider(),
                          const SizedBox(height: 16),
                          buildRow(
                              'Заказ создан', formatDate(order!.orderedAt!)),
                          const SizedBox(height: 16),
                          wm.profileRepository.profile.value!.shopId ==
                                  product.shopId.toString()
                              ? StatusDropdown(
                                  wm: wm,
                                  currentStatus: order!.status,
                                  shopId: snapshot.data!.shopId!,
                                  orderPartId: order!.orderPartId!,
                                )
                              : buildRow(
                                  'Статус доставки', mapStatus(order!.status)),
                          const SizedBox(height: 16),
                          buildRow('Статус оплаты', 'Оплачен'),
                        ],
                      ),
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget buildRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTypography.personalCardTitle),
        Text(value, style: AppTypography.personalCardTitle),
      ],
    );
  }

  String mapStatus(String status) {
    switch (status) {
      case 'ORDERED':
        return 'В пути';
      case 'DELIVERED':
        return 'Доставлен';
      case 'CANCELLED':
        return 'Отменен';
      default:
        return 'В пути';
    }
  }
}

class StatusDropdown extends StatefulWidget {
  final IOrderHistoryDetailScreenWidgetModel wm;
  final String currentStatus;
  final int shopId;
  final int orderPartId;

  const StatusDropdown({
    Key? key,
    required this.wm,
    required this.currentStatus,
    required this.shopId,
    required this.orderPartId,
  }) : super(key: key);

  @override
  _StatusDropdownState createState() => _StatusDropdownState();
}

class _StatusDropdownState extends State<StatusDropdown> {
  late String currentStatus;

  @override
  void initState() {
    super.initState();
    currentStatus = widget.currentStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Статус доставки', style: AppTypography.personalCardTitle),
        DropdownButton<String>(
          value: currentStatus,
          items: <String>['ORDERED', 'DELIVERED', 'CANCELLED']
              .map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(mapStatus(value)),
            );
          }).toList(),
          onChanged: (String? newStatus) {
            if (newStatus != null && newStatus != currentStatus) {
              setState(() {
                currentStatus = newStatus;
              });
              widget.wm.changeStatus(
                ChangeOrderStatusRequest(
                  orderPartId: widget.orderPartId,
                  newStatus: newStatus,
                ),
                widget.shopId,
              );
            }
          },
        ),
      ],
    );
  }

  String mapStatus(String status) {
    switch (status) {
      case 'IN_CART':
        return 'В пути';
      case 'ORDERED':
        return 'В пути';
      case 'DELIVERED':
        return 'Доставлен';
      case 'CANCELLED':
        return 'Отменен';
      default:
        return 'В пути';
    }
  }
}

class OrderProductCard extends StatelessWidget {
  const OrderProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.quantity,
  }) : super(key: key);

  final String imageUrl;
  final String productName;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          height: 120,
          width: 120,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Image.asset(
            'assets/image/empty_photo.png',
            fit: BoxFit.cover,
            height: 120,
            width: 120,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productName, style: AppTypography.personalCardTitle),
            const SizedBox(height: 50),
            Text('Количество: $quantity',
                style: AppTypography.personalCardTitle),
          ],
        ),
      ],
    );
  }
}
