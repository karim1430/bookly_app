import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/search/presention/manger/search_cubit/search_cubit.dart';
import 'package:bookly_app/core/widgets/custom_circle_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.bookModel.length,
              itemBuilder: (context, index) {
                return BookListViewItem(
                  bookModel: state.bookModel[index],
                );
              });
        } else if (state is SearchFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else if (state is SearchLouding) {
          return const CustomCircleIndicator();
        } else {
          return const Center(
            child: Text('inter book name in  menu search '),
          );
        }
      },
    );
  }
}
