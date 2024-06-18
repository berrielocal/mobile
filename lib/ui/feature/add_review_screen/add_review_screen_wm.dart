import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/data/repository/comment_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/comment/comment_create_request.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_review_screen_model.dart';
import 'add_review_screen_widget.dart';

abstract interface class IAddReviewScreenWidgetModel implements IWidgetModel {
  void back();
  TextEditingController get controller;
  CommentRepository get commentRepository;
  Future<void> postComment(CommentCreateRequest request);
}

AddReviewScreenWidgetModel defaultAddReviewScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<AddReviewScreenModel>();
  return AddReviewScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for AddReviewScreenWidget
class AddReviewScreenWidgetModel
    extends WidgetModel<AddReviewScreenWidget, AddReviewScreenModel>
    implements IAddReviewScreenWidgetModel {
  AddReviewScreenWidgetModel(AddReviewScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }

  @override
  Future<void> postComment(CommentCreateRequest request) async{
    await commentRepository.postComment(request);
  }

  @override
  TextEditingController controller = TextEditingController();

  @override
  CommentRepository commentRepository = AppComponents().commentRepository;
}
