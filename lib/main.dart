import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:gramaz_app/core/config/app_routes.dart';
import 'package:gramaz_app/core/config/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gramaz_app/core/services/app_service_locator.dart';
import 'package:gramaz_app/features/books/data/repositories/homre_repo_impl.dart';
import 'features/books/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'features/books/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const GramazApp());
}

class GramazApp extends StatelessWidget {
  const GramazApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  FeaturedBooksCubit(getIt.get<HomereRepoImpl>())
                    ..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(getIt.get<HomereRepoImpl>())
                ..fetchNewestBooks(),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouters.router,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme: GoogleFonts.spaceGroteskTextTheme(
                ThemeData.dark().textTheme.apply(
                      bodyColor: kTertiaryColor,
                      displayColor: kTertiaryColor,
                    ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            title: 'Gramaz',
          ),
        );
      },
    );
  }
}
