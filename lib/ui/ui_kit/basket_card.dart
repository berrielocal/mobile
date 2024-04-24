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
  }) : super(key: key);

  final ProductResponse cartProduct;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      onTap: onTap,
      leading: AspectRatio(
        aspectRatio: 1.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: cartProduct.imageUrl ?? '',
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
        cartProduct.name ?? 'Продукт',
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
      subtitle: RichText(
        text: TextSpan(
          text: Decimal.parse(
            cartProduct.cost.toString(),
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
                  if (cartProduct.units != '1') {
                  } else {}
                },
                icon: const Icon(
                  Icons.remove,
                ),
              ),
            ),
            Text(
              '${cartProduct.units}',
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
}
