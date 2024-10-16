import 'package:flutter/material.dart';
import 'package:gramaz_app/core/utils/colors.dart';

import '../../../../../core/utils/styles.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            'Best Seller',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            'Latest',
            style: Styles.textStyle16
                .copyWith(fontWeight: FontWeight.w400, color: kHighlightColor),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            'Coming soon',
            style: Styles.textStyle16
                .copyWith(fontWeight: FontWeight.w400, color: kHighlightColor),
          ),
        ],
      ),
    );
  }
}
