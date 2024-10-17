import 'package:flutter/material.dart';

import '../../../../../core/config/app_styles.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFF665230),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Expanded(
        child: Text('Category',
            style: Styles.textStyle16.copyWith(color: const Color(0xFFF9C975))),
      ),
    );
  }
}
