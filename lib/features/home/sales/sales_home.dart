import 'package:e_commerce_app/features/home_navigation/providers/home_notifier.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:e_commerce_app/utils/common/back_arrow.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:e_commerce_app/utils/screen_measurements.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SalesHome extends StatelessWidget {
  const SalesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 380,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                width: double.infinity,
                height: 380,
                child: Image.asset(
                  ImagePaths.salesNewCollectionImg,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                bottom: 18,
                right: 20,
                child: Text(
                  "New Collection",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 34,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 30,
                child: BackArrow(
                  onTap: () => Provider.of<HomeNotifier>(
                    context,
                    listen: false,
                  ).changeHomePageNumber(1),
                  height: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Provider.of<HomeNotifier>(
                      context,
                      listen: false,
                    ).changeHomePageNumber(3);
                  },
                  child: Container(
                    width: 185,
                    height: 185,
                    color: Colors.white,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Summer sale",
                      style: TextStyle(
                        color: CustomColors.redColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 185,
                  height: ScreenMeasurements.screenHeight(context) * 0.242,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(ImagePaths.salesBlackImg),
                      ),
                      const Positioned(
                        bottom: 25,
                        left: 18,
                        child: Text(
                          "Black",
                          style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: ScreenMeasurements.screenWidth(context) * 0.5286,
              height: ScreenMeasurements.screenHeight(context) * 0.4572,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: ScreenMeasurements.screenWidth(context) * 0.98,
                    child: Image.asset(
                      ImagePaths.salesHoodiesImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  const Positioned(
                    left: 45,
                    child: SizedBox(
                      width: 150,
                      child: Text(
                        "Men's Hoodies",
                        style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
