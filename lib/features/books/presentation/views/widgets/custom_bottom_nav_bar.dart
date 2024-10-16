import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gramaz_app/core/utils/app_routers.dart';
import 'package:gramaz_app/core/utils/colors.dart';

import '../../../../../core/utils/assets.dart'; // Assuming you are using your predefined colors

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0; // Initial selected index

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: SvgPicture.asset(
                AssetsData.homeIcon,
                color: selectedIndex == 0 ? kHighlightColor : kTertiaryColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(1);
                GoRouter.of(context).push(AppRouters.kSearchView);
              },
              child: SvgPicture.asset(
                AssetsData.searchIcon,
                color: selectedIndex == 1 ? kHighlightColor : kTertiaryColor,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: SvgPicture.asset(
                AssetsData.saveIcon,
                color: selectedIndex == 2 ? kHighlightColor : kTertiaryColor,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(3),
              child: SvgPicture.asset(
                AssetsData.menuIcon,
                color: selectedIndex == 3 ? kHighlightColor : kTertiaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
