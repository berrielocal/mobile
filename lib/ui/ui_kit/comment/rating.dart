import 'package:berrielocal/ui/ui_kit/comment/star.dart';
import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  final int maxRating;
  final double starSize;

  const Rating({
    Key? key,
    this.maxRating = 5,
    this.starSize = 40.0,
  }) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int _currentRating = 0;

  void _setRating(int rating) {
    setState(() {
      _currentRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.maxRating, (index) {
        return Star(
          filled: index < _currentRating,
          size: widget.starSize,
          onTap: () => _setRating(index + 1),
        );
      }),
    );
  }
}
