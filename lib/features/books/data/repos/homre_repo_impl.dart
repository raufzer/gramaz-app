import 'package:dartz/dartz.dart';
import 'package:gramaz_app/core/errors/failures.dart';
import 'package:gramaz_app/core/utils/api_service.dart';
import 'package:gramaz_app/features/books/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/books/data/repos/home_repo.dart';

class HomreRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomreRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {}
}
