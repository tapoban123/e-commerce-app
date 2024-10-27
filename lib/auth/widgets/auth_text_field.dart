import 'package:e_commerce_app/theme/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obsecureText;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.obsecureText = false,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  ValueNotifier<bool> hideContent = ValueNotifier(true);
  ValueNotifier<bool> showSuffixIcon = ValueNotifier(false);

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
      child: ValueListenableBuilder(
        valueListenable: showSuffixIcon,
        builder: (context, showSuffixIconValue, child) =>
            ValueListenableBuilder(
          valueListenable: hideContent,
          builder: (context, hideContentValue, child) => TextFormField(
            controller: widget.controller,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              label: Text(widget.labelText),
              floatingLabelStyle:
                  const TextStyle(color: CustomColors.greyTextColor),
              labelStyle: const TextStyle(
                color: CustomColors.greyTextColor,
                fontWeight: FontWeight.w500,
              ),
              suffixIcon: widget.obsecureText && showSuffixIconValue
                  ? GestureDetector(
                      onTap: () {
                        hideContent.value = !hideContent.value;
                      },
                      child: Icon(hideContentValue
                          ? CupertinoIcons.eye_fill
                          : CupertinoIcons.eye_slash_fill),
                    )
                  : null,
            ),
            onChanged: (value) {
              if (value.isNotEmpty && widget.obsecureText) {
                showSuffixIcon.value = true;
              } else {
                showSuffixIcon.value = false;
              }
            },
            obscureText: widget.obsecureText ? hideContentValue : false,
            cursorHeight: 18,
            cursorColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
