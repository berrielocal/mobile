import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/comment/comment_create_request.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/auth/custom_textfield.dart';
import 'package:berrielocal/ui/ui_kit/comment/rating.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
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
        minimum: const EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0xFFA1A1A1)),
              ),
              child: SizedBox(
                height: 246,
                width: 360,
                child: CustomTextfield(
                  color: AppColor.white,
                  maxLines: 8,
                  controller: wm.controller,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Rating(
              shopId: shopId!,
              controller: wm.controller,
              repository: wm.commentRepository,
            ),
          ],
        ),
      ),
    );
  }
}
