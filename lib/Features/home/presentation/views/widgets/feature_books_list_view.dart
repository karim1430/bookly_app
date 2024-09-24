import 'package:bookly_app/Features/home/presentation/mange/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/feature_book_item.dart';
import 'package:bookly_app/core/widgets/custom_circle_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FeatureBookItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  );
                }),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
