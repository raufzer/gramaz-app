import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gramaz_app/core/shared/widgets/custom_error_widget.dart';
import 'package:gramaz_app/features/books/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/custom_list_view_item.dart';
import '../../../../../core/shared/widgets/custom_loading_indicator.dart';

class FeaturesListViewItems extends StatelessWidget {
  const FeaturesListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: 170.r,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
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
