import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookdetailsAppBar(),
        const SizedBox(
          height: 36,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .22,
          ),
          child: FeatureBookItem(
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          book.volumeInfo.title!,
          style: Style.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Style.textStyle18,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BooksRating(
          mainAxisAlignment: MainAxisAlignment.center,
          ratingAverage: book.volumeInfo.averageRating == null
              ? '0'
              : book.volumeInfo.averageRating.toString(),
          ratingCount: book.volumeInfo.ratingsCount == null
              ? '0'
              : book.volumeInfo.ratingsCount.toString(),
        ),
        const SizedBox(
          height: 30,
        ),
        const BooksAction(),
      ],
    );
  }
}
