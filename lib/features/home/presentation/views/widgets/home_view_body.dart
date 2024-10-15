import 'package:flutter/material.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}
