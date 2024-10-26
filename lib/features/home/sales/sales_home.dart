import 'package:e_commerce_app/features/home_navigation/providers/home_notifier.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:e_commerce_app/utils/common/back_arrow.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SalesHome extends StatelessWidget {
  const SalesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  // height: 380,
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
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              Provider.of<HomeNotifier>(
                                context,
                                listen: false,
                              ).changeHomePageNumber(3);
                            },
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
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
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Image.asset(
                                    ImagePaths.salesBlackImg,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Positioned(
                                  bottom: 10,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: double.infinity,
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
                          left: 35,
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
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
