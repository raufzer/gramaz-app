import 'package:flutter/material.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/categories_slider.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/category_list_view_items.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/custom_app_bar.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/featured_list_view_items.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/custom_bottom_nav_bar.dart';
import '../../../../../core/config/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(),
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
                height: 30,
              ),
              CategoriesSlider(),
              const SizedBox(height: 4),
            ],
          )),
          const SliverFillRemaining(
            child: CategoryListViewItems(),
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
