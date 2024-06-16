import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/comment/comments_response.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/comment/comment.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'shop_reviews_screen_wm.dart';

@RoutePage()
class ShopReviewsScreenWidget
    extends ElementaryWidget<IShopReviewsScreenWidgetModel> {
  const ShopReviewsScreenWidget({
    @queryParam required this.commentsResponse,
    @queryParam required this.shopId,
    Key? key,
    WidgetModelFactory wmFactory = defaultShopReviewsScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final CommentsResponse? commentsResponse;
  final int? shopId;

  @override
  Widget build(IShopReviewsScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Отзывы',
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
          minimum: EdgeInsets.only(
            bottom: 16,
            right: 16,
            left: 16,
          ),
          child: commentsResponse == null || commentsResponse!.comments.isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Text('Отзывов пока нет!'),
                    ),
                    CustomFilledButton(text: 'ОСТАВИТЬ ОТЗЫВ')
                  ],
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: commentsResponse!.comments.length,
                        itemBuilder: (context, index) {
                          return FutureBuilder(
                            future: wm.getCommentName(
                              commentsResponse!.comments[index].customerId!,
                            ),
                            builder: (BuildContext context,
                                AsyncSnapshot<String> snapshot) {
                              if (snapshot.hasData) {
                                return Comment(
                                  name: snapshot.data!,
                                  text: commentsResponse!.comments[index].text!,
                                  rating: commentsResponse!.comments[index].rate
                                      .toString(),
                                );
                              }
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    CustomFilledButton(
                      text: 'ОСТАВИТЬ ОТЗЫВ',
                      onTap: () => wm.addComment(shopId),
                    )
                  ],
                )),
    );
  }
}
