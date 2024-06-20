import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/search_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'search_screen_wm.dart';

@RoutePage()
class SearchScreenWidget extends ElementaryWidget<ISearchScreenWidgetModel> {
  const SearchScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultSearchScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISearchScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
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
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SearchWidget(
                enabled: true,
                autoFocus: true,
                onChanged: wm.onSearchQueryChanged,
              ),
              Expanded(
                child: EntityStateNotifierBuilder<List<String>>(
                  listenableEntityState: wm.searchSuggestions,
                  builder: (context, suggestions) {
                    if (suggestions == null || suggestions.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    return ListView.builder(
                      itemCount: suggestions.length,
                      itemBuilder: (context, index) {
                        final suggestion = suggestions[index];
                        return ListTile(
                          title: Text(suggestion),
                          onTap: () => wm.onSuggestionSelected(suggestion),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
