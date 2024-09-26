part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}

final class SearchLouding extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<BookModel> bookModel;

  const SearchSuccess(this.bookModel);
}

final class SearchFailure extends SearchState {
  final String errMessage;

  const SearchFailure(this.errMessage);
}
