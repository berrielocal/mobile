import 'package:berrielocal/data/repository/product_repository.dart';
import 'package:berrielocal/domain/cart/order_part_main_info.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    Key? key,
    required this.cartProduct,
    required this.onTap,
    required this.repository,
    required this.size,
  }) : super(key: key);

  final OrderPartMainInfo cartProduct;
  final VoidCallback onTap;
  final ProductRepository repository;
  final int size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FutureBuilder(
        future: repository.getProductById(cartProduct.productId!),
        builder:
            (BuildContext context, AsyncSnapshot<ProductResponse> snapshot) {
          if (snapshot.hasData) {
            return ListTile(
              onTap: onTap,
              leading: AspectRatio(
                aspectRatio: 1.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: snapshot.data?.imageUrl ?? '',
                    progressIndicatorBuilder: (_, __, ___) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    errorWidget: (_, __, ___) {
                      return Image.asset(
                        'assets/image/empty_photo.png',
                        fit: BoxFit.fill,
                      );
                    },
                  ),
                ),
              ),
              title: Text(
                snapshot.data?.name ?? 'Продукт',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
              ),
              subtitle: RichText(
                text: TextSpan(
                  text: Decimal.parse(
                    snapshot.data?.cost.toString() ?? '',
                  ).formatMoney(),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ),
              trailing: SizedBox(
                width: 150,
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          if (snapshot.data?.units != '1') {
                          } else {}
                        },
                        icon: const Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                    Text(
                      '${size} ${snapshot.data?.units}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return SizedBox.shrink();
        });
  }
}
