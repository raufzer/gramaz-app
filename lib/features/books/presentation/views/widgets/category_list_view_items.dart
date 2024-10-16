import 'package:flutter/material.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/category_view_item.dart';

class CategoryListViewItems extends StatelessWidget {
  const CategoryListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero, 
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: const CategoryViewItem(),
        );
      },
    );
  }
}
