import 'package:bookly_app/Features/search/presention/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
