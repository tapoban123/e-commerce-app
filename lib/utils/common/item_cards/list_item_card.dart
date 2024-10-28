import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:e_commerce_app/utils/common/star_generate_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItemCard extends StatelessWidget {
  final String imagePath;
  final String itemTitle;
  final String itemSmallText;
  final int numberOfStars;
  final int price;
  final bool isFavorite;

  const ListItemCard({
    super.key,
    required this.imagePath,
    required this.itemTitle,
    required this.itemSmallText,
    required this.numberOfStars,
    required this.price,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: SizedBox(
        width: double.infinity,
        height: 160,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: 140,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemTitle,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          itemSmallText,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: generateRatingStars(numberOfStars),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "\$ $price",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Material(
                elevation: 2.5,
                borderRadius: BorderRadius.circular(50),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: isFavorite
                        ? const Icon(
                            CupertinoIcons.heart_fill,
                            color: CustomColors.redColor,
                          )
                        : const Icon(
                            CupertinoIcons.heart,
                            color: CustomColors.greyTextColor,
                          ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
