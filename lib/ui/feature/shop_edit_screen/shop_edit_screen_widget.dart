import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/product/product_response.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/domain/shop/shop_update_request.dart';
import 'package:berrielocal/extensions/snack_bar.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:berrielocal/ui/ui_kit/custom_alert.dart';
import 'package:berrielocal/ui/ui_kit/product_card/product_card_list_horizontal.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'shop_edit_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ShopEditScreen module
@RoutePage()
class ShopEditScreenWidget
    extends ElementaryWidget<IShopEditScreenWidgetModel> {
  final int shopId;
  const ShopEditScreenWidget({
    Key? key,
    @PathParam('shopId') required this.shopId,
    WidgetModelFactory wmFactory = defaultShopEditScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IShopEditScreenWidgetModel wm) {
    final imageUrlNotifier = ValueNotifier<String>('');

    return Builder(builder: (context) {
      return PopScope(
        canPop: true,
        onPopInvoked: (didPop) async {
          await wm.shopRepository.updateShop(
            request: ShopUpdateRequest(
              name: wm.nameController.text,
              imageUrl: wm.urlController.text,
              email: wm.emailController.text,
              phoneNumber: wm.phoneController.text,
            ),
          );
          await wm.profileRepository.loadProfile();
          context.showSnackBar('Изменения в профиле сохранены!');
        },
        child: FutureBuilder(
            future: wm.authRepository.getShopById(shopId),
            builder: (BuildContext context,
                AsyncSnapshot<ShopAllInfoResponse> snapshot) {
              if (snapshot.hasData) {
                wm.setData(snapshot.data!);
                wm.loadProducts(shopId);
                imageUrlNotifier.value = snapshot.data?.imageUrl ?? '';
                return Scaffold(
                  appBar: AppBar(
                    title: Text(
                      snapshot.data?.name ?? 'Мой магазин',
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
                    minimum:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                    child: ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    ValueListenableBuilder<String>(
                                      valueListenable: imageUrlNotifier,
                                      builder: (context, url, _) {
                                        return CachedNetworkImage(
                                          height: 273,
                                          width: 273,
                                          imageUrl: url,
                                          progressIndicatorBuilder:
                                              (_, __, ___) {
                                            return const Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            );
                                          },
                                          errorWidget: (_, __, ___) {
                                            return Image.asset(
                                              'assets/image/empty_photo.png',
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    GestureDetector(
                                      onTap: () => customDialog(
                                        context,
                                        'Вставьте ссылку на изображение',
                                        'Формат .png 1024 x 1024',
                                        () {
                                          imageUrlNotifier.value =
                                              wm.urlController.text;
                                        },
                                        wm.urlController,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: SvgPicture.asset(
                                            'assets/svg/add.svg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Данные магазина',
                              style: AppTypography.personalCardTitle,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextfield(
                              controller: wm.nameController,
                              autofocus: false,
                              textFieldBorderRadius: 0,
                              hint: 'Название магазина',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextfield(
                              controller: wm.infoController,
                              enabled: false,
                              autofocus: false,
                              textFieldBorderRadius: 0,
                              hint: 'Информация',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextfield(
                              controller: wm.phoneController,
                              autofocus: false,
                              textFieldBorderRadius: 0,
                              hint: 'Телефон',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextfield(
                              enabled: false,
                              controller: wm.emailController,
                              autofocus: false,
                              textFieldBorderRadius: 0,
                              hint: 'E-mail',
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 16),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Продукция магазина',
                                  style: AppTypography.personalCardTitle,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                GestureDetector(
                                  onTap: () => context.router
                                      .navigate(ProductAddRoute()),
                                  child: SvgPicture.asset(
                                    'assets/svg/add.svg',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
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
                                    return ProductCardListHorizontal(
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
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      );
    });
  }
}
