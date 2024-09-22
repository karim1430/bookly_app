import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            CustomBookdetailsAppBar(),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .25,
              ),
              child: FeatureBookItem(),
            ),
            SizedBox(
              height: 40,
            ),
            const Text(
              'The Jungle Book',
              style: Style.textStyle30,
            ),
            SizedBox(
              height: 5,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: Style.textStyle18,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            BooksRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButtom()),
      ],
    );
  }
}
