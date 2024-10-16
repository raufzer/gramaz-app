import 'package:flutter/material.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/category_button.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class BookInfoSection extends StatelessWidget {
  final bool showPrice; // Add a boolean flag to control price visibility

  const BookInfoSection({
    super.key,
    required this.showPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Book Title',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          'Book Author',
          style: Styles.textStyle12.copyWith(color: kHighlightColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 16),
        if (showPrice) // Check the flag and conditionally display the price
          Text(
            "385 £",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        const SizedBox(height: 12),
        CategoryButton(),
        const SizedBox(height: 20),
      ],
    );
  }
}
