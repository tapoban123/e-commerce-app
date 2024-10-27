import 'package:e_commerce_app/features/shop/widgets/sales_card.dart';
import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';

class WomenSection extends StatelessWidget {
  const WomenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: CustomColors.redColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SUMMER SALES",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Upto 50% off",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: ListView(
              children: [
                SalesCard(
                  imagePath: ImagePaths.salesNewImg,
                  onTap: () {},
                  text: "New",
                ),
                SalesCard(
                  imagePath: ImagePaths.salesClothesImg,
                  text: "Clothes",
                  onTap: () {},
                ),
                SalesCard(
                  imagePath: ImagePaths.salesShoesImg,
                  text: "Shoes",
                  onTap: () {},
                ),
                SalesCard(
                  imagePath: ImagePaths.salesAccessoriesImg,
                  text: "Accessories",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
