import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  CustomBookdetailsAppBar(),
                  const SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * .22,
                    ),
                    child: FeatureBookItem(),
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
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const BooksAction(),
                  const Expanded(
                    child: SizedBox(
                      height: 45,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Style.textStyle14.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  SimilarFeatureBooksListView(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
