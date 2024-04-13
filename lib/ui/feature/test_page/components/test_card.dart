
import 'package:flutter/material.dart';
import 'package:berrielocal/domain/test/test.dart';
import 'package:berrielocal/res/theme/base_const.dart';

class TestCard extends StatelessWidget {
  final Test test;
  final TextStyle? cardTestStyle;
  const TestCard({super.key, required this.test, this.cardTestStyle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(basePadding),
        child: Row(
          children: [
            Text('${test.id}', style: cardTestStyle,),
            const Spacer(),
            Text(test.message, style: cardTestStyle,),
          ],
        ),
      ),
    );
  }
}

