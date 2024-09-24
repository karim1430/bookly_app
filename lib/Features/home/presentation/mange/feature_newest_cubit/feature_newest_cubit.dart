import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'feature_newest_state.dart';

class FeatureNewestCubit extends Cubit<FeatureNewestState> {
  FeatureNewestCubit(this.homeRepo) : super(FeatureNewestInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(FeatureNewestInitial());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        return emit(FeatureNewestFailure(failure.errMessage));
      },
      (books) {
        return emit(FeatureNewestSuccess(books));
      },
    );
  }
}
