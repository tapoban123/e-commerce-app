import 'package:flutter/material.dart';

class SocialAccountButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const SocialAccountButton({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
