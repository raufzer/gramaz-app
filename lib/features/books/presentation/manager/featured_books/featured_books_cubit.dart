import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gramaz_app/features/books/data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
