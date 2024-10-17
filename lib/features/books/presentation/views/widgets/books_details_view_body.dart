import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gramaz_app/core/utils/app_assets.dart';
import 'package:gramaz_app/core/config/app_constants.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/book_details_view_bottom_nav_bar.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/book_info_section.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/custom_app_bar.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/custom_list_view_item.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomListViewItem(
 imageUrl: 'https://imgur.com/3TIXA6o',
              ),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: BookInfoSection(
                  showPrice: false,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    SvgPicture.asset(AssetsData.shareIcon),
                    const SizedBox(width: 20),
                    SvgPicture.asset(AssetsData.saveIcon),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              kTestText,
              maxLines: 5,
            ),
          )
        ],
      ),
      bottomNavigationBar: const CustomBookDetailsViewNavBar(),
    );
  }
}
