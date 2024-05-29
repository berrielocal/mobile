import 'package:auto_route/auto_route.dart';
import 'package:berrielocal/di/app_components.dart';
import 'package:berrielocal/domain/shop/shop_all_info_response.dart';
import 'package:berrielocal/domain/shop/shop_update_request.dart';
import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:berrielocal/ui/ui_kit/custom_filled_button.dart';
import 'package:berrielocal/utils/translation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavoriteCategoriesScreenWidget extends StatefulWidget {
  const FavoriteCategoriesScreenWidget({super.key});

  @override
  State<FavoriteCategoriesScreenWidget> createState() =>
      _FavoriteCategoriesScreenWidgetState();
}

final Map<String, bool> map = <String, bool>{
  'FISH': false,
  'MEAT': false,
  'VEGETABLES': false,
  'FRUITS': false,
  'NUTS': false,
  'MUSHROOMS': false,
  'EXOTIC': false,
};

final profileRepository = AppComponents().profileRepository;
final shopRepository = AppComponents().shopRepository;

class _FavoriteCategoriesScreenWidgetState
    extends State<FavoriteCategoriesScreenWidget> {
  int _selectedCategoryCount = 0;

  @override
  void initState() {
    if (profileRepository.profile.hasValue &&
        profileRepository.profile.value?.categories != null) {
      for (final String item in profileRepository.profile.value!.categories!) {
        if (map.containsKey(item.translateRuEn())) {
          map[item.translateRuEn()] = true;
          _selectedCategoryCount++;
        }
      }
    }
    super.initState();
  }

  void _onCategoryChanged(String category, bool? value) {
    if (value == null || value == false) {
      map[category] = false;
      _selectedCategoryCount--;
    } else if (_selectedCategoryCount < 5) {
      map[category] = true;
      _selectedCategoryCount++;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Можно выбрать не более 5 категорий')),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: profileRepository.profile,
      builder:
          (BuildContext context, AsyncSnapshot<ShopAllInfoResponse?> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Любимые категории',
                  style: AppTypography.personalCardTitle,
                ),
                centerTitle: true,
                leading: IconButton(
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.comfortable,
                  onPressed: context.router.pop,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.black,
                  ),
                ),
              ),
              body: SafeArea(
                minimum: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  bottom: 16,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('Можно выбрать не более 5 категорий'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.greyCategories,
                        ),
                        child: CheckboxListTile(
                          title: const Text('Рыба'),
                          value: map['FISH'],
                          onChanged: (bool? value) {
                            _onCategoryChanged('FISH', value);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.greyCategories,
                        ),
                        child: CheckboxListTile(
                          title: const Text('Мясо'),
                          value: map['MEAT'],
                          onChanged: (bool? value) {
                            _onCategoryChanged('MEAT', value);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.greyCategories,
                        ),
                        child: CheckboxListTile(
                          title: const Text('Овощи'),
                          value: map['VEGETABLES'],
                          onChanged: (bool? value) {
                            _onCategoryChanged('VEGETABLES', value);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.greyCategories,
                        ),
                        child: CheckboxListTile(
                          title: const Text('Фрукты'),
                          value: map['FRUITS'],
                          onChanged: (bool? value) {
                            _onCategoryChanged('FRUITS', value);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.greyCategories,
                        ),
                        child: CheckboxListTile(
                          title: const Text('Орехи'),
                          value: map['NUTS'],
                          onChanged: (bool? value) {
                            _onCategoryChanged('NUTS', value);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.greyCategories,
                        ),
                        child: CheckboxListTile(
                          title: const Text('Грибы'),
                          value: map['MUSHROOMS'],
                          onChanged: (bool? value) {
                            _onCategoryChanged('MUSHROOMS', value);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.greyCategories,
                        ),
                        child: CheckboxListTile(
                          title: const Text('Экзотика'),
                          value: map['EXOTIC'],
                          onChanged: (bool? value) {
                            _onCategoryChanged('EXOTIC', value);
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomFilledButton(
                      text: 'Сохранить',
                      onTap: () async {
                        final List<String> selectedCategories = [];
                        map.forEach((key, value) {
                          if (value == true) {
                            selectedCategories.add(key);
                          }
                        });
                        await shopRepository.updateShop(
                            request: ShopUpdateRequest(
                          categories: selectedCategories,
                        ));
                        profileRepository.loadProfile();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Изменения сохранены',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ));
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
