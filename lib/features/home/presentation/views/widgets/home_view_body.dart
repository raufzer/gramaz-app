import 'package:flutter/material.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/categories_slider.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/category_list_view_items.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/featured_list_view_items.dart';

import '../../../../../core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'For you',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FeaturesListViewItems(),
            const SizedBox(
              height: 40,
            ),
            CategoriesSlider(),
            const SizedBox(height: 16),
          ],
        )),
        const SliverFillRemaining(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: CategoryListViewItems(),
        )),
      ],
    );
  }
}
