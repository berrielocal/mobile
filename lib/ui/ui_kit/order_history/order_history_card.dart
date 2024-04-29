import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderHistoryCard extends StatelessWidget {
  const OrderHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 117,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('№11075322'),
                Icon(
                  Icons.arrow_forward_ios,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Row(
              children: [Text('от 10 марта 2024')],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Статус заказа'),
                Padding(
                    padding: EdgeInsets.only(right: 4), child: Text('В пути')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
