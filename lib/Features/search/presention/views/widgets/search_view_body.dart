import 'package:bookly_app/Features/search/presention/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presention/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, bottom: 20),
            child: Text(
              'Result Search',
              style: Style.textStyle18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SearchResultListView()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
