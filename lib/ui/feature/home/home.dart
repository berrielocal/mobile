import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:flutter/material.dart';
import 'package:berrielocal/generated/l10n.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  void initState() {
    super.initState();
    AppMetrica.reportEvent('app_launch');
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ShowCaseTab(),
        CartTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final localization = S.of(context);
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/svg/showcase.svg',
                color: AppColor.black,
              ),
              selectedIcon: SvgPicture.asset(
                'assets/svg/showcase.svg',
                color: AppColor.green,
              ),
              label: localization.showcase,
            ),
            NavigationDestination(
              icon: Stack(
                alignment: Alignment.topRight,
                children: [
                  SvgPicture.asset(
                    'assets/svg/cart.svg',
                    color: AppColor.black,
                  ),
                  SvgPicture.asset(
                    'assets/svg/vector.svg',
                  ),
                ],
              ),
              selectedIcon: Stack(
                alignment: Alignment.topRight,
                children: [
                  SvgPicture.asset(
                    'assets/svg/cart.svg',
                    color: AppColor.green,
                  ),
                  SvgPicture.asset(
                    'assets/svg/vector.svg',
                  ),
                ],
              ),
              label: localization.cart,
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/svg/profile.svg',
                color: AppColor.black,
              ),
              selectedIcon: SvgPicture.asset(
                'assets/svg/profile.svg',
                color: AppColor.green,
              ),
              label: localization.profile,
            ),
          ],
        );
      },
    );
  }
}
