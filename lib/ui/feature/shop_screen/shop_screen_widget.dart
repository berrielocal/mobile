import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_list_response.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/default_shimmer.dart';
import 'package:berrielocal/ui/ui_kit/product_card/categories_list.dart';
import 'package:berrielocal/ui/ui_kit/product_card/product_card_list_horizontal.dart';
import 'package:berrielocal/ui/ui_kit/product_card/product_card_list_horizontal_showcase.dart';
import 'package:berrielocal/ui/ui_kit/product_card/rating_stars.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'shop_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ShopScreen module
@RoutePage()
class ShopScreenWidget extends ElementaryWidget<IShopScreenWidgetModel> {
  final int shopId;
  const ShopScreenWidget({
    Key? key,
    @PathParam('shopId') required this.shopId,
    WidgetModelFactory wmFactory = defaultShopScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShopScreenWidgetModel wm) {
    return FutureBuilder(
        future: wm.authRepository.getShopById(shopId),
        builder: (BuildContext context,
            AsyncSnapshot<ShopAllInfoResponse> snapshot) {
          if (snapshot.hasData) {
            wm.loadProducts(shopId);
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  snapshot.data?.name ?? 'Название магазина',
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
                  child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: 128,
                                height: 128,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.black.withOpacity(0.08),
                                      offset: const Offset(0, 4),
                                      blurRadius: 12,
                                      spreadRadius: 0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    CachedNetworkImage(
                                      fit: BoxFit.contain,
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
                                    Positioned(
                                      right: 10,
                                      top: 8,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          color: AppColor.red,
                                        ),
                                        height: 24,
                                        width: 67,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '${snapshot.data?.matchLevel?.floor()}%' ??
                                                  '0%',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: AppColor.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            GestureDetector(
                                              onTap:
                                                  wm.tooltipController.toggle,
                                              child: DefaultTextStyle(
                                                style:
                                                    DefaultTextStyle.of(context)
                                                        .style
                                                        .copyWith(fontSize: 10),
                                                child: OverlayPortal(
                                                  controller:
                                                      wm.tooltipController,
                                                  overlayChildBuilder:
                                                      (BuildContext context) {
                                                    return Positioned(
                                                      top: 50,
                                                      left: 50,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(3),
                                                        width: 185,
                                                        height: 46,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          color:
                                                              Color(0xFFF0F0F0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFF318F45),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Данный показатель рассчитан на основе выбранной вами категорий товаров.',
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: SvgPicture.asset(
                                                    'assets/svg/info.svg',
                                                    height: 18,
                                                    width: 18,
                                                    color: AppColor.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: List.generate(
                                    6,
                                    (index) =>
                                        const Text('Информация: информация'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Row(
                            children: [
                              buildRatingStars(snapshot.data?.rating ?? 0.0),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(snapshot.data?.rating == null
                                  ? '0.0'
                                  : snapshot.data!.rating.toString()),
                              Spacer(),
                              FutureBuilder(
                                future:
                                    wm.commentRepository.getComments(shopId),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Text(
                                      '${snapshot.data?.comments.length} отзывов >' ??
                                          '0',
                                      style: AppTypography.personalCardTitle,
                                    );
                                  }
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        EntityStateNotifierBuilder(
                          listenableEntityState: wm.testProducts,
                          loadingBuilder: (context, data) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          builder: ((context, data) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: CategoriesList(
                                          list: data!.products!.keys.toList() ??
                                              []),
                                    )
                                  ],
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: data!.products!.keys.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final title =
                                        data.products!.keys.elementAt(index);
                                    List<ProductResponse> shopList =
                                        data.products?[title] ?? [];
                                    return ProductCardListHorizontalShowcase(
                                      response: shopList,
                                      category: title,
                                    );
                                  },
                                ),
                              ],
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
