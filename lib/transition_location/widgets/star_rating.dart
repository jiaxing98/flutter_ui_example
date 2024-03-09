import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int count;

  const StarRating({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        count,
        (index) => Container(
          margin: const EdgeInsets.only(right: 4.0),
          child: const Icon(
            Icons.star_rate,
            size: 18.0,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
