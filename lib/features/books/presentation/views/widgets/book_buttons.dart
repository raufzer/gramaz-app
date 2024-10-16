import 'package:flutter/material.dart';
import 'package:gramaz_app/core/utils/colors.dart';
import 'package:gramaz_app/core/utils/styles.dart';

class ProductButtons extends StatelessWidget {
  const ProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: kTertiaryColor,
            backgroundColor: kSecondaryColor,
            side: BorderSide(
              color: kTertiaryColor,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text('ADD TO CART',
                style: Styles.textStyle16.copyWith(color: kTertiaryColor)),
          ),
        ),
        const SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: kSecondaryColor,
            backgroundColor: kTertiaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: Text('BUY RS. 780', style: Styles.textStyle16),
          ),
        ),
      ],
    );
  }
}
