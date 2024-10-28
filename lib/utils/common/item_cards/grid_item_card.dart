import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:e_commerce_app/utils/common/star_generate_method.dart';
import 'package:flutter/material.dart';

class GridItemCard extends StatefulWidget {
  final String imagePath;
  final String smallText;
  final String bigText;
  final String? price;
  final int ratings;
  final VoidCallback onTap;
  final int numOfStars;
  final bool onSale;
  final String? discount;
  final String? oldPrice;
  final String? newPrice;

  const GridItemCard({
    super.key,
    required this.imagePath,
    required this.smallText,
    required this.bigText,
    required this.onTap,
    this.ratings = 0,
    this.price,
    this.numOfStars = 0,
    this.onSale = false,
    this.discount,
    this.oldPrice,
    this.newPrice,
  });

  @override
  State<GridItemCard> createState() => _GridItemCardState();
}

class _GridItemCardState extends State<GridItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: widget.onTap,
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
                          widget.imagePath,
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
                          color: widget.onSale
                              ? CustomColors.redColor
                              : Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          widget.onSale ? widget.discount! : "NEW",
                          style: const TextStyle(
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
                    children: generateRatingStars(widget.numOfStars),
                  ),
                  Text(
                    "(${widget.ratings})",
                    style: const TextStyle(
                      color: CustomColors.greyTextColor,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Text(
                widget.smallText,
                style: const TextStyle(
                  color: CustomColors.greyTextColor,
                  fontSize: 12,
                ),
              ),
              Text(
                widget.bigText,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              widget.onSale
                  ? RichText(
                      text: TextSpan(
                        text: widget.oldPrice,
                        style: const TextStyle(
                          color: CustomColors.greyTextColor,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 3,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "  ${widget.newPrice}",
                            style: const TextStyle(
                              color: CustomColors.redColor,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Text(
                      widget.price ?? "",
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
