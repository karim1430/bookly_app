import 'package:bookly_app/Features/home/presentation/mange/feature_newest_cubit/feature_newest_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_circle_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListViewBuilder extends StatelessWidget {
  const NewestListViewBuilder({super.key});
//BestSellerListViewBuilder
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureNewestCubit, FeatureNewestState>(
      builder: (context, state) {
        if (state is FeatureNewestSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookListViewItem(
                  bookModel: state.books[index],
                );
              });
        } else if (state is FeatureNewestFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
