import 'package:flutter/material.dart';
import 'package:gramaz_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SearchViewBody(),
    ));
  }
}
