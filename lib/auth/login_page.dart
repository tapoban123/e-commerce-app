import 'package:e_commerce_app/auth/forgot_password_page.dart';
import 'package:e_commerce_app/auth/widgets/auth_button.dart';
import 'package:e_commerce_app/auth/widgets/auth_text_field.dart';
import 'package:e_commerce_app/auth/widgets/post_text_field_question.dart';
import 'package:e_commerce_app/auth/widgets/social_account_button_row.dart';
import 'package:e_commerce_app/features/home_navigation/navigation_controller.dart';
import 'package:e_commerce_app/utils/image_paths.dart';
import 'package:e_commerce_app/utils/screen_measurements.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void navigateToForgotPasswordPage(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ForgotPasswordPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final tween =
            Tween(begin: const Offset(1, 0), end: Offset.zero).animate(
          CurvedAnimation(
            parent: animation,
            curve: Curves.easeInCubic,
          ),
        );
        return SlideTransition(
          position: tween,
          child: child,
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(ImagePaths.backArrow),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Column(
                  children: [
                    AuthTextField(
                      controller: _emailController,
                      labelText: "Email",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthTextField(
                      controller: _passwordController,
                      labelText: "Password",
                      obsecureText: true,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    PostTextFieldQuestion(
                      questionText: "Forgot your password?",
                      onTap: () => navigateToForgotPasswordPage(context),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthButton(
                      buttonText: "LOGIN",
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
                      height: ScreenMeasurements.screenHeight(context) * 0.25,
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
