import 'package:flutter/material.dart';
import 'package:gramaz_app/core/config/app_colors.dart';

import '../../../../../core/config/app_styles.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text(
            'Best Seller',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            width: 35,
          ),
          Text(
            'Latest',
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.w400, color: kHighlightColor),
          ),
          const SizedBox(
            width: 35,
          ),
          Text(
            'Coming soon',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w400,
              color: kHighlightColor,
            ),
          ),
        ],
      ),
    );
  }
}
