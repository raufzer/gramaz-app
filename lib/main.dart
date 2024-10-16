import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:gramaz_app/core/utils/app_routers.dart';
import 'package:gramaz_app/core/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
        return MaterialApp.router(
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
        );
      },
    );
  }
}
