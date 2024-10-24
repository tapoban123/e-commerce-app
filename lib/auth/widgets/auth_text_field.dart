import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10)
          .copyWith(right: 15, left: 15),
      child: TextFormField(
        controller: controller,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          label: Text(labelText),
          floatingLabelStyle: const TextStyle(color: CustomColors.greyTextColor),
          labelStyle: const TextStyle(
            color: CustomColors.greyTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        cursorHeight: 18,
        cursorColor: Colors.black,
      ),
    );
  }
}
