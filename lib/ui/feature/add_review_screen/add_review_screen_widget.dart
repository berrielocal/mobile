import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'add_review_screen_wm.dart';

@RoutePage()
class AddReviewScreenWidget
    extends ElementaryWidget<IAddReviewScreenWidgetModel> {
  const AddReviewScreenWidget({
    Key? key,
    @queryParam required this.shopId,
    WidgetModelFactory wmFactory = defaultAddReviewScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int? shopId;
  @override
  Widget build(IAddReviewScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Новый отзыв',
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
        child: Container(),
      ),
    );
  }
}
