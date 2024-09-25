import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBook({required String category}) async {
    emit(SimilarBooksLouding());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) {
        return emit(SimilarBooksFailure(failure.errMessage));
      },
      (books) {
        return emit(SimilarBooksSuccess(books));
      },
    );
  }
}
