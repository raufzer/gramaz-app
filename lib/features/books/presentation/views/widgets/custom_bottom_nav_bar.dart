import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gramaz_app/core/utils/colors.dart';

import '../../../../../core/utils/assets.dart'; // Assuming you are using your predefined colors

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: kPrimaryColor, 
      child: SizedBox(
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          GestureDetector(child: SvgPicture.asset(AssetsData.homeIcon),
          onTap: (){},),
          GestureDetector(child: SvgPicture.asset(AssetsData.searchIcon),
          onTap: (){},),
          GestureDetector(child: SvgPicture.asset(AssetsData.saveIcon),
          onTap: (){},),
                    GestureDetector(child: SvgPicture.asset(AssetsData.menuIcon),
          onTap: (){},),
          ],
        ),
      ),
    );
  }
}