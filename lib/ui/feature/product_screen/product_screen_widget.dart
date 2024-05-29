import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/extensions/money_extension.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:decimal/decimal.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'product_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProductScreen module
@RoutePage()
class ProductScreenWidget extends ElementaryWidget<IProductScreenWidgetModel> {
  final int productId;
  const ProductScreenWidget({
    Key? key,
    @PathParam('productId') required this.productId,
    WidgetModelFactory wmFactory = defaultProductScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProductScreenWidgetModel wm) {
    return FutureBuilder(
        future: wm.getProductById(productId),
        builder:
            (BuildContext context, AsyncSnapshot<ProductResponse> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  snapshot.data?.categories
                          ?.firstWhere((element) => element.isNotEmpty) ??
                      'Категория',
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
                minimum: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CachedNetworkImage(
                          height: 273,
                          width: 273,
                          imageUrl: snapshot.data?.imageUrl ?? '',
                          progressIndicatorBuilder: (_, __, ___) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          errorWidget: (_, __, ___) {
                            return Image.asset(
                              'assets/image/empty_photo.png',
                            );
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            snapshot.data?.name ?? 'Название продукта',
                            style: AppTypography.personalCardTitle,
                          ),
                          const Spacer(),
                          Text(
                            '${Decimal.fromInt(snapshot.data?.cost?.toInt() ?? 100).formatMoney()} / ${snapshot.data?.units ?? 'шт'}',
                            style: AppTypography.personalCardTitle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 24),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                          6,
                          (index) =>
                              const Text('Информация: информация, информация'),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svg/favorite.svg'),
                          const SizedBox(
                            width: 20,
                          ),
                          if (wm.profileRepository.profile.hasValue &&
                              wm.profileRepository.profile.value != null)
                            int.parse(wm.profileRepository.profile.value!
                                        .shopId!) !=
                                    snapshot.data!.shopId
                                ? SizedBox(
                                    width: 270,
                                    child: CustomFilledButton(
                                      text: 'В КОРЗИНЕ',
                                      onTap: () {
                                        wm.toCart();
                                      },
                                    ),
                                  )
                                : SizedBox.shrink(),
                          if (wm.profileRepository.profile.value == null)
                            SizedBox(
                              width: 270,
                              child: CustomFilledButton(
                                text: 'В КОРЗИНУ',
                                onTap: () {
                                  wm.toCart();
                                },
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
