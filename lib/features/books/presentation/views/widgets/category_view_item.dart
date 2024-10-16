import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gramaz_app/core/utils/app_routers.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/book_info_section.dart';

import '../../../../../core/utils/assets.dart';

class CategoryViewItem extends StatelessWidget {
  const CategoryViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Container(
              height: 150.r,
              width: 90.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: BookInfoSection(
                  showPrice: true ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
