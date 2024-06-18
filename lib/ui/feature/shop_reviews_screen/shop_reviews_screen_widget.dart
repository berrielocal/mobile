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
                  wm.profileRepository.profile.hasValue &&
                          wm.profileRepository.profile.value != null &&
                          wm.profileRepository.profile.value!.shopId ==
                              shopId.toString()
                      ? CustomFilledButton(
                          fillColor: Colors.grey,
                          text: 'ОСТАВИТЬ ОТЗЫВ',
                          onTap: () {},
                        )
                      : CustomFilledButton(
                          text: 'ОСТАВИТЬ ОТЗЫВ',
                          onTap: () => wm.addComment(shopId),
                        ),
                ],
              )
            : _CommentsList(
                commentsResponse: commentsResponse!,
                getCommentName: wm.getCommentName,
                addComment: () => wm.addComment(shopId),
                wm: wm,
                shopId: shopId!,
              ),
      ),
    );
  }
}

class _CommentsList extends StatefulWidget {
  const _CommentsList({
    Key? key,
    required this.commentsResponse,
    required this.getCommentName,
    required this.addComment,
    required this.wm,
    required this.shopId,
  }) : super(key: key);

  final CommentsResponse commentsResponse;
  final Future<String> Function(int customerId) getCommentName;
  final VoidCallback addComment;
  final IShopReviewsScreenWidgetModel wm;
  final int shopId;

  @override
  __CommentsListState createState() => __CommentsListState();
}

class __CommentsListState extends State<_CommentsList> {
  final Map<int, Future<String>> _nameFutures = {};

  @override
  void initState() {
    super.initState();
    _cacheNameFutures();
  }

  void _cacheNameFutures() {
    for (var comment in widget.commentsResponse.comments) {
      if (!_nameFutures.containsKey(comment.customerId)) {
        _nameFutures[comment.customerId!] =
            widget.getCommentName(comment.customerId!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.commentsResponse.comments.length,
            itemBuilder: (context, index) {
              final comment = widget.commentsResponse.comments[index];
              return FutureBuilder(
                future: _nameFutures[comment.customerId],
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      return Comment(
                        name: snapshot.data!,
                        text: comment.text!,
                        rating: comment.rate.toString(),
                      );
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            },
          ),
        ),
        widget.wm.profileRepository.profile.hasValue &&
                widget.wm.profileRepository.profile.value != null &&
                widget.wm.profileRepository.profile.value!.shopId ==
                    widget.shopId.toString()
            ? CustomFilledButton(
                text: 'ОСТАВИТЬ ОТЗЫВ',
                fillColor: Colors.grey,
                onTap: () {},
              )
            : CustomFilledButton(
                text: 'ОСТАВИТЬ ОТЗЫВ',
                onTap: widget.addComment,
              ),
      ],
    );
  }
}
