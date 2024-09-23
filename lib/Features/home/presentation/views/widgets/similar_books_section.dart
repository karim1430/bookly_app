import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Style.textStyle14
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 14,
        ),
        SimilarFeatureBooksListView(),
      ],
    );
  }
}
