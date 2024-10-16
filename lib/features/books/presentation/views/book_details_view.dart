import 'package:flutter/material.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/books_details_view_body.dart';


class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BooksDetailsViewBody(),
    );
  }
}
