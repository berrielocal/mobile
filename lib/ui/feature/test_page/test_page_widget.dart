import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:berrielocal/res/theme/base_const.dart';
import 'components/test_card.dart';
import 'test_page_wm.dart';

@RoutePage()
class TestPageWidget extends ElementaryWidget<ITestPageWidgetModel> {
  const TestPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultTestPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ITestPageWidgetModel wm) {
    final TextStyle? cardTestStyle = wm.textTheme.bodyLarge;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          wm.localizations.test_title,
        ),
      ),
      body: EntityStateNotifierBuilder(
        listenableEntityState: wm.testState,
        builder: (context, data) {
          data ??= [];
          return ListView.separated(
              itemBuilder: (context, index) {
                final test = data![index];
                return TestCard(test: test, cardTestStyle: cardTestStyle);
              },
              separatorBuilder: (_, __) {
                return const SizedBox(height: baseSeparator);
              },
              itemCount: data.length);
        },
        loadingBuilder: (_, __) {
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
