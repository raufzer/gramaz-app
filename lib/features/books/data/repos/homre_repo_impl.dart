import 'package:dartz/dartz.dart';
import 'package:gramaz_app/core/errors/failures.dart';
import 'package:gramaz_app/features/books/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/books/data/repos/home_repo.dart';

class HomreRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
   
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {

    throw UnimplementedError();
  }
}