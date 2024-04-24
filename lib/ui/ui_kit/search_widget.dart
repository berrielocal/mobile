import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: context.colors.whiteEC,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: 0,
          color: AppColor.white,
        ),
        boxShadow: [
          BoxShadow(color: AppColor.black.withOpacity(0.1)),
          const BoxShadow(
            color: AppColor.white,
            spreadRadius: -0.5,
            blurRadius: 0.5,
          ),
        ],
      ),
      height: 44.0,
      child: Stack(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIconConstraints: const BoxConstraints(
                minWidth: 32,
                minHeight: 48,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 12),
                child: Icon(
                  Icons.search,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: false,
              // fillColor: context.colors.whiteEC,
              isDense: true,
              hintText: 'Искать в BerrieLocal',
              hintStyle: AppTypography.personalCardTitle
                  .copyWith(color: AppColor.grey),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            ),
            cursorWidth: 1,
            cursorColor: AppColor.black,
            textAlignVertical: TextAlignVertical.center,
            maxLines: 1,
            minLines: 1,
          ),
        ],
      ),
    );
  }
}
