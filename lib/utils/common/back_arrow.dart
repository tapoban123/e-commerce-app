import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  final VoidCallback onTap;
  final double height;
  final Color? color;

  const BackArrow({
    super.key,
    required this.onTap,
    required this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: height,
        child: Image.asset(
          ImagePaths.backArrow,
          color: color,
        ),
      ),
    );
  }
}
