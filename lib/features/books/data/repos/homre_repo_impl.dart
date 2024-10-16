import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gramaz_app/core/errors/failures.dart';
import 'package:gramaz_app/core/utils/api_service.dart';
import 'package:gramaz_app/features/books/data/models/book_model/book_model.dart';
import 'package:gramaz_app/features/books/data/repos/home_repo.dart';

class HomreRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomreRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure("An unexpected error occurred."));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=featured&Filtering=free-ebooks');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure("An unexpected error occurred."));
      }
    }
  }
}
