import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:gramaz_app/core/utils/app_routers.dart';
import 'package:gramaz_app/core/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gramaz_app/core/utils/service_locator.dart';
import 'package:gramaz_app/features/books/data/repos/homre_repo_impl.dart';
import 'features/books/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'features/books/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setup();
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
                  FeaturedBooksCubit(getIt.get<HomreRepoImpl>()),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(getIt.get<HomreRepoImpl>()),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouters.router,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kPrimaryColor,
              textTheme: GoogleFonts.playfairDisplayTextTheme(
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
