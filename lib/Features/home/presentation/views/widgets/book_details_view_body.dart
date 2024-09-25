import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_section.dart';

import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';

import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  BooksDetailsSection(
                    book: book,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 45,
                    ),
                  ),
                  const SimilarBooksSection(),
                  const SizedBox(
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
