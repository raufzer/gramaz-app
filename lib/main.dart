import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gramaz_app/core/utils/colors.dart';

import 'features/splash/presentation/views/splash_view.dart';

main() {
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
      builder: (_, child) {
        return GetMaterialApp(
          theme:
              ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
          debugShowCheckedModeBanner: false,
          title: 'Gramaz',
          home: child,
        );
      },
      child: const SplashView(),
    );
  }
}
