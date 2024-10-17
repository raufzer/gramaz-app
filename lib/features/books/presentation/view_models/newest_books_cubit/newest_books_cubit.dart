import 'package:bloc/bloc.dart';
import 'package:gramaz_app/features/books/presentation/view_models/newest_books_cubit/newest_books_state.dart';

import '../../../data/repositories/home_repo.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
