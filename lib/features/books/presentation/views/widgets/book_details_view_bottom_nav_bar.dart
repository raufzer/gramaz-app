import 'package:flutter/material.dart';
import 'package:gramaz_app/core/config/app_colors.dart';
import 'package:gramaz_app/features/books/presentation/views/widgets/book_buttons.dart';

// Assuming you are using your predefined colors

class CustomBookDetailsViewNavBar extends StatelessWidget {
  const CustomBookDetailsViewNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: kSecondaryColor,
      child: SizedBox(
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ProductButtons(),
          ],
        ),
      ),
    );
  }
}
