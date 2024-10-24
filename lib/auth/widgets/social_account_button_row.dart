import 'package:e_commerce_app/auth/widgets/social_account_button.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:flutter/material.dart';

class SocialAccountButtonRow extends StatelessWidget {
  const SocialAccountButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Or sign up with social account",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialAccountButton(
              imagePath: ImagePaths.googleIcon,
              onTap: () {},
            ),
            const SizedBox(
              width: 16,
            ),
            SocialAccountButton(
              imagePath: ImagePaths.facebookIcon,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
