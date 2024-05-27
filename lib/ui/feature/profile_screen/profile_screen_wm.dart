import 'package:auto_route/auto_route.dart';
import 'package:auto_route/src/router/controller/routing_controller.dart';
import 'package:berrielocal/data/repository/profile_repository.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/shop/shop_main_info.dart';
import 'package:berrielocal/generated/l10n.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/utils/theme_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract interface class IProfileScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  void toAuth();
  ProfileRepository get profileRepository;
  EntityStateNotifier<ShopMainInfo> get profileState;
}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<ProfileScreenModel>();
  return ProfileScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for ProfileScreenWidget
class ProfileScreenWidgetModel
    extends WidgetModel<ProfileScreenWidget, ProfileScreenModel>
    with ThemeProvider
    implements IProfileScreenWidgetModel {
  ProfileScreenWidgetModel(ProfileScreenModel model) : super(model);

  @override
  void toAuth() {
    context.router.navigate(LoginRoute());
  }

  @override
  ProfileRepository profileRepository = AppComponents().profileRepository;
  
  @override
  EntityStateNotifier<ShopMainInfo> profileState = EntityStateNotifier();
}
