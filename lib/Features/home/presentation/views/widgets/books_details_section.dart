import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomBookdetailsAppBar(),
        const SizedBox(
          height: 36,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .22,
          ),
          child: FeatureBookItem(
            imageUrl:
                'https://www.ala.org/sites/default/files/2024-04/oif-bbw24-LOGO-1160-840.png',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: Style.textStyle30,
        ),
        const SizedBox(
          height: 5,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle18,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const BooksRating(
          mainAxisAlignment: MainAxisAlignment.center,
          ratingAverage: '4.8',
          ratingCount: '(3132)',
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
