import 'package:bookly_app/Features/search/presention/manger/search_cubit/search_cubit.dart';
import 'package:bookly_app/Features/search/presention/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presention/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/style.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          CustomSearchTextField(
            onSubmitted: (data) {
              BlocProvider.of<SearchCubit>(context)
                  .fetchSearchBook(searchBook: data);
            },
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, bottom: 20),
            child: Text(
              'Result Search',
              style: Style.textStyle18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
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
