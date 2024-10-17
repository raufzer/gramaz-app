import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Row(
        children: [
          Image.asset(AssetsData.gramazLogo),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AssetsData.shoppingCartIcon,
              height: 20.r,
              width: 20.r,
            ),
          )
        ],
      ),
    );
  }
}
