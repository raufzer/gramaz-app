import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gramaz_app/features/books/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/books/data/repositories/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
