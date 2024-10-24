import 'package:e_commerce_app/features/home_navigation/providers/navigation_notifier.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class NavigationIcon extends StatelessWidget {
  final int pageNumber;
  final String imagePath;
  final String coloredImagePath;
  final VoidCallback onTap;
  final String iconText;
  final AnimationController controller;

  const NavigationIcon({
    super.key,
    required this.pageNumber,
    required this.imagePath,
    required this.coloredImagePath,
    required this.onTap,
    required this.iconText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationNotifier>(
      builder: (context, navigationProvider, child) {
        int currentPageNumber = navigationProvider.pageNumber;

        return GestureDetector(
          onTap: onTap,
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) =>  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(currentPageNumber == pageNumber
                    ? coloredImagePath
                    : imagePath),
                Text(
                  iconText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: currentPageNumber == pageNumber
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: currentPageNumber == pageNumber
                        ? CustomColors.redColor
                        : CustomColors.greyTextColor,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
