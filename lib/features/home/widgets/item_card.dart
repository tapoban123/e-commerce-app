import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imagePath;
  final String smallText;
  final String bigText;
  final String price;
  final VoidCallback onTap;

  const ItemCard({
    super.key,
    required this.imagePath,
    required this.smallText,
    required this.bigText,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 6,
                      left: 6,
                      child: Container(
                        width: 42,
                        height: 22,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "NEW",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: List.generate(
                      5,
                      (index) =>
                          SizedBox(height: 18, child: Image.asset(ImagePaths.star)),
                    ),
                  ),
                  const Text(
                    "(0)",
                    style: TextStyle(
                      color: CustomColors.greyTextColor,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Text(
                smallText,
                style: const TextStyle(
                  color: CustomColors.greyTextColor,
                  fontSize: 12,
                ),
              ),
              Text(
                bigText,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Text(
                price,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
