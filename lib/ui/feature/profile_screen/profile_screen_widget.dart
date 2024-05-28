import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/navigation/app_router.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'profile_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileScreen module
@RoutePage()
class ProfileScreenWidget extends ElementaryWidget<IProfileScreenWidgetModel> {
  const ProfileScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileScreenWidgetModel wm) {
    return Builder(
      builder: (context) {
        return StreamBuilder<ShopAllInfoResponse?>(
            initialData: wm.profileRepository.profile.valueOrNull,
            stream: wm.profileRepository.profile.stream,
            builder: (context, profile) {
              if (profile.hasData) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(profile.data!.name ?? 'Название магазина'),
                    centerTitle: true,
                    actions: const [],
                  ),
                  body: ProfileCardsAuthorized(
                    wm: wm,
                  ),
                );
              }
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Профиль'),
                  centerTitle: true,
                  actions: const [],
                ),
                body: ProfileCardsUnauthorized(
                  wm: wm,
                ),
              );
            });
      },
    );
  }
}

class ProfileCardsAuthorized extends StatelessWidget {
  const ProfileCardsAuthorized({
    super.key,
    required this.wm,
  });

  final IProfileScreenWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.router.navigate(ShopEditRoute(
                shopId:
                    int.parse(wm.profileRepository.profile.value!.shopId!)));
          },
          child: SizedBox(
            height: 45,
            child: ListTile(
              title: Text(
                'Мои магазин',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        GestureDetector(
          onTap: () => context.router.navigate(
            OrderHistoryRoute(),
          ),
          child: SizedBox(
            height: 45,
            child: ListTile(
              title: Text(
                'Заказы',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        SizedBox(
          height: 45,
          child: GestureDetector(
            onTap: () => context.router.navigate(
              const FavoriteCategoriesRoute(),
            ),
            child: ListTile(
              title: Text(
                'Любимые категории',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        GestureDetector(
          onTap: () => context.router.navigate(FavoriteRoute()),
          child: SizedBox(
            height: 45,
            child: ListTile(
              title: Text(
                'Избранное',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  child: CustomFilledButton(
                    fillColor: AppColor.white,
                    textColor: AppColor.black,
                    onTap: () {
                      wm.profileRepository.logout();
                    },
                    text: 'Выйти',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Удалить аккаунт',
                    style: AppTypography.label.copyWith(
                      color: const Color(0xFFB90000),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileCardsUnauthorized extends StatelessWidget {
  const ProfileCardsUnauthorized({
    super.key,
    required this.wm,
  });

  final IProfileScreenWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.router.navigate(LoginRoute());
          },
          child: SizedBox(
            height: 45,
            child: ListTile(
              title: Text(
                'Мои магазин',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.router.navigate(LoginRoute());
          },
          child: SizedBox(
            height: 45,
            child: ListTile(
              title: Text(
                'Заказы',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        SizedBox(
          height: 45,
          child: GestureDetector(
            onTap: () {
              context.router.navigate(LoginRoute());
            },
            child: ListTile(
              title: Text(
                'Любимые категории',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.router.navigate(LoginRoute());
          },
          child: SizedBox(
            height: 45,
            child: ListTile(
              title: Text(
                'Избранное',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Divider(
            thickness: 1.7,
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              child: CustomFilledButton(
                onTap: () {
                  wm.toAuth();
                },
                text: 'Войти',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
