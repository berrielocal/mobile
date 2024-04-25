import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/utils/theme_extension.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_screen_model.dart';
import 'search_screen_widget.dart';

abstract interface class ISearchScreenWidgetModel
    implements IWidgetModel, IThemeProvider {
  void back();
}

SearchScreenWidgetModel defaultSearchScreenWidgetModelFactory(
    BuildContext context) {
  final model = context.read<SearchScreenModel>();
  return SearchScreenWidgetModel(model);
}

// TODO: cover with documentation
/// Default widget model for SearchScreenWidget
class SearchScreenWidgetModel
    extends WidgetModel<SearchScreenWidget, SearchScreenModel>
    with ThemeProvider
    implements ISearchScreenWidgetModel {
  SearchScreenWidgetModel(SearchScreenModel model) : super(model);

  @override
  void back() {
    context.router.pop();
  }
}
