import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:gramaz_app/core/utils/api_service.dart';
import 'package:gramaz_app/features/books/data/repos/homre_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomreRepoImpl>(HomreRepoImpl(
    getIt.get<ApiService>(),
  ));
}
