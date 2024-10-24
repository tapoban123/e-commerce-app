import 'package:flutter/material.dart';

class PostTextFieldQuestion extends StatelessWidget {
  final String questionText;
  final VoidCallback onTap;

  const PostTextFieldQuestion({
    super.key,
    required this.questionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            questionText,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            height: 10,
            child: Image.asset(
              "assets/images/right_arrow.png",
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
