import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 6.3,
          ),
          const Text(
            '4.8',
            style: Style.textStyle16,
          ),
          const SizedBox(
            width: 9,
          ),
          Text('(2525)',
              style: Style.textStyle14.copyWith(color: const Color(0xff707070)))
        ],
      ),
    );
  }
}
