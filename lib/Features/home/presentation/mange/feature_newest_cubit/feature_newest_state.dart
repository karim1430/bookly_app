part of 'feature_newest_cubit.dart';

sealed class FeatureNewestState extends Equatable {
  const FeatureNewestState();

  @override
  List<Object> get props => [];
}

final class FeatureNewestInitial extends FeatureNewestState {}

final class FeatureNewestLouding extends FeatureNewestState {}

final class FeatureNewestSuccess extends FeatureNewestState {
  final List<BookModel> books;

  const FeatureNewestSuccess(this.books);
}

final class FeatureNewestFailure extends FeatureNewestState {
  final String errMessage;

  const FeatureNewestFailure(this.errMessage);
}
