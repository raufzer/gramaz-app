import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gramaz_app/features/home/presentation/views/widgets/custom_list_view_item.dart';

class FeaturesListViewItems extends StatelessWidget {
  const FeaturesListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.r,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, indesx) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const CustomListViewItem(),
            );
          }),
    );
  }
}
