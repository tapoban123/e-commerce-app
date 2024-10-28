
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';

List<Image> generateRatingStars(int numberOfStars) {
    final starList = List.generate(
      numberOfStars,
      (index) => Image.asset(
        ImagePaths.coloredStar,
        height: 15,
      ),
    );

    if (numberOfStars < 5) {
      while (starList.length < 5) {
        starList.add(Image.asset(ImagePaths.star));
      }
    }

    return starList;
  }