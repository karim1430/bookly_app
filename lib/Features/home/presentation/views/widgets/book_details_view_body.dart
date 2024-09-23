import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';
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
                  BooksDetailsSection(),
                  const Expanded(
                    child: SizedBox(
                      height: 45,
                    ),
                  ),
                  SimilarBooksSection(),
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
