import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLouding());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold(
      (failure) {
        return emit(FeatureBooksFailure(failure.errMessage));
      },
      (books) {
        return emit(FeatureBooksSuccess(books));
      },
    );
  }
}
