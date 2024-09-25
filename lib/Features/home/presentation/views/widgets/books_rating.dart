import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BooksRating extends StatelessWidget {
  const BooksRating(
      {super.key,
      this.mainAxisAlignment,
      required this.ratingAverage,
      required this.ratingCount});
  final MainAxisAlignment? mainAxisAlignment;

  final String ratingAverage;
  final String ratingCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 6.3,
          ),
          Text(
            ratingAverage,
            style: Style.textStyle16,
          ),
          const SizedBox(
            width: 9,
          ),
          Text('(${ratingCount})',
              style: Style.textStyle14.copyWith(color: const Color(0xff707070)))
        ],
      ),
    );
  }
}
