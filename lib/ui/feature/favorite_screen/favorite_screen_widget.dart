import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'favorite_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for FavoriteScreen module
@RoutePage()
class FavoriteScreenWidget
    extends ElementaryWidget<IFavoriteScreenWidgetModel> {
  const FavoriteScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFavoriteScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFavoriteScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Избранное',
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
        minimum: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Здесь пока ничего нет',
              style: AppTypography.personalCardTitle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Чтобы добавить товар в избранное, нажмите на сердечко в карточке товара',
              style: AppTypography.personalCardTitle.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
