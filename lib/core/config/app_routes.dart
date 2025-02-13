import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gramaz_app/features/books/presentation/views/book_details_view.dart';
import 'package:gramaz_app/features/books/presentation/views/home_view.dart';
import 'package:gramaz_app/features/search/presentation/views/search_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const BooksDetailsView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
