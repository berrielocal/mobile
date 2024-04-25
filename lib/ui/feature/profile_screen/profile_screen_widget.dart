import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:elementary/elementary.dart';
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
        return Scaffold(
          appBar: AppBar(
            title: const Text('Профиль'),
            centerTitle: true,
            actions: const [],
          ),
          body: const ProfileCards(),
        );
      },
    );
  }
}

class ProfileCards extends StatelessWidget {
  const ProfileCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
                onTap: () {},
                text: 'Войти',
              ),
            ),
          ),
        ),
      ],
    );
  }
}