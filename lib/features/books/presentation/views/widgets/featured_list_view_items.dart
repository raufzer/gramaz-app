import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gramaz_app/core/shared/widgets/custom_error_widget.dart';
import 'package:gramaz_app/features/books/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bloc/bloc.dart';

import '../../../../../core/shared/widgets/custom_loading_indicator.dart';

class FeaturesListViewItems extends StatelessWidget {
  const FeaturesListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksState) {
        return SizedBox(
          height: 170.r,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, indesx) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const CustomListViewItem(
                    itemHeight: 220,
                    itemWidth: 130,
                  ),
                );
              }),
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return CustomLoadingIndicator();
      }
    });
  }
}
