import 'package:berrielocal/res/theme/app_typography.dart';
import 'package:berrielocal/res/theme/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
    required this.name,
    required this.text,
    required this.rating,
  });

  final String name;
  final String text;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
          top: 16,
          right: 16,
        ),
        width: 349,
        height: 176,
        decoration: BoxDecoration(
          color: Color(0xFFF7FFF9),
          border: Border.all(
            color: AppColor.grey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(name),
                Spacer(),
                SvgPicture.asset('assets/svg/star.svg'),
                SizedBox(
                  width: 5,
                ),
                Text(rating),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 293),
              child: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  text,
                  style: AppTypography.personalCardTitle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
