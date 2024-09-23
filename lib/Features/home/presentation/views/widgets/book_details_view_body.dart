
import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_section.dart';

import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';

import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
