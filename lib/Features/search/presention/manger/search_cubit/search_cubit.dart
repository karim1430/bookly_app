import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/repos/home_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSearchBook({required String searchBook}) async {
    emit(SearchLouding());
    var result = await homeRepo.fetchSearchBooks(searchBook: searchBook);

    result.fold(
      (failure) {
        return emit(SearchFailure(failure.errMessage));
      },
      (books) {
        return emit(SearchSuccess(books));
      },
    );
  }
}
