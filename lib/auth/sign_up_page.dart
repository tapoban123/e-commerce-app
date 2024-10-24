import 'package:e_commerce_app/auth/login_page.dart';
import 'package:e_commerce_app/auth/widgets/auth_button.dart';
import 'package:e_commerce_app/auth/widgets/auth_text_field.dart';
import 'package:e_commerce_app/auth/widgets/post_text_field_question.dart';
import 'package:e_commerce_app/auth/widgets/social_account_button_row.dart';
import 'package:e_commerce_app/features/home_navigation/navigation_controller.dart';
import 'package:e_commerce_app/theme/custom_fonts.dart';
import 'package:e_commerce_app/utils/screen_measurements.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void navigateToLoginScreen(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LoginPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final tween = Tween<Offset>(
            begin: const Offset(1, 0),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInCubic),
          );
          return SlideTransition(
            position: tween,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: CustomFonts.metropolisFont,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    AuthTextField(
                      controller: _nameController,
                      labelText: "Name",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    AuthTextField(
                      controller: _emailController,
                      labelText: "Email",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    AuthTextField(
                      controller: _passwordController,
                      labelText: "Password",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PostTextFieldQuestion(
                      questionText: "Already have an account?",
                      onTap: () => navigateToLoginScreen(context),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthButton(
                      buttonText: "SIGN UP",
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const NavigationController(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            final tween =
                                Tween(begin: const Offset(1, 0), end: Offset.zero)
                                    .animate(CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInCubic,
                            ));

                            return SlideTransition(
                              position: tween,
                              child: child,
                            );
                          },
                        ));
                      },
                    ),
                    SizedBox(
                      height: ScreenMeasurements.screenHeight(context) * 0.10,
                    ),
                    const SocialAccountButtonRow()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
