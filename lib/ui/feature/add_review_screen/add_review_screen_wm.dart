import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_review_screen_model.dart';
import 'add_review_screen_widget.dart';

abstract interface class IAddReviewScreenWidgetModel implements IWidgetModel {
  void back();
  TextEditingController get controller;
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
  TextEditingController controller = TextEditingController();
}
