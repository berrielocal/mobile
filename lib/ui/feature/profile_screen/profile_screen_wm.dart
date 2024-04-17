import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract interface class IProfileScreenWidgetModel implements IWidgetModel {}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ProfileScreenModel>();
  return ProfileScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ProfileScreenWidget
class ProfileScreenWidgetModel
    extends WidgetModel<ProfileScreenWidget, ProfileScreenModel>
    implements IProfileScreenWidgetModel {
  ProfileScreenWidgetModel(ProfileScreenModel model) : super(model);
}
