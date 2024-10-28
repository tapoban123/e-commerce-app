import 'package:e_commerce_app/utils/common/back_arrow.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';

class ShopPageAppbar extends StatelessWidget {
  final String appBarText;
  final VoidCallback onTap;

  const ShopPageAppbar({
    super.key,
    required this.appBarText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 12),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackArrow(
              onTap: onTap,
              height: 30,
            ),
            Text(
              appBarText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 30,
              child: Image.asset(ImagePaths.searchIcon),
            ),
          ],
        ),
      ),
    );
  }
}
