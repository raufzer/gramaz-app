import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:gramaz_app/core/services/api/books_api_service.dart';
import 'package:gramaz_app/features/books/data/repositories/homre_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomereRepoImpl>(HomereRepoImpl(
    getIt.get<ApiService>(),
  ));
}
