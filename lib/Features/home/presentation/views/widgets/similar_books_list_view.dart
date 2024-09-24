import 'package:bookly_app/Features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:flutter/material.dart';

class SimilarFeatureBooksListView extends StatelessWidget {
  const SimilarFeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return FeatureBookItem(
              imageUrl:
                  'https://www.ala.org/sites/default/files/2024-04/oif-bbw24-LOGO-1160-840.png',
            );
          }),
    );
  }
}
