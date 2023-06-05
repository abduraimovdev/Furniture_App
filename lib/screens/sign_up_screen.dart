import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/custom_text_field.dart';
import 'package:furniture_app/views/login_button.dart';
import 'package:furniture_app/controllers/sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {
  static const id = "/signUp";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  late final SignUpController controller;

  @override
  void initState() {
    super.initState();
    controller = SignUpController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: const EdgeInsets.only(right: 30, bottom: 50),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 1,
                        width: width / 3.5,
                        color: AppColors.cBDBDBD.color,
                      ),
                      SvgIcon.logo,
                      Container(
                        height: 1,
                        width: width / 3.5,
                        color: AppColors.cBDBDBD.color,
                      ),
                    ],
                  ),
                ),

                // Text: Welcome Back
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      Strings.welcome.text,
                      style: AppTextStyles.merriWeatherBold24.copyWith(
                        color: AppColors.c303030.color,
                        letterSpacing: 1.7,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF.color,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 10,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        // Input: Name
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.nameController,
                            labelText: Strings.name.text,
                            isObscure: false,
                          ),
                        ),

                        // Input: Email
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.emailController,
                            labelText: Strings.email.text,
                            isObscure: false,
                          ),
                        ),

                        // Input: Password
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.passwordController,
                            labelText: Strings.password.text,
                            isObscure: true,
                          ),
                        ),

                        // Input: Confirm password
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CustomTextField(
                            controller: controller.rePasswordController,
                            labelText: Strings.confirmPassword.text,
                            isObscure: true,
                          ),
                        ),

                        // Button: Sign up
                        const SizedBox(height: 50),
                        LoginButton(
                          onPressed: () => controller.signUp(context),
                          text: Strings.signUp.text,
                        ),

                        // Text: All ready have account
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Strings.alreadyHaveAccount.text,
                              style:
                                  AppTextStyles.nunitoSansSemiBold14.copyWith(
                                color: AppColors.c808080.color,
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () => controller.goToSignIn(context),
                              child: Text(
                                Strings.signIn.text,
                                style: AppTextStyles.nunitoSansBold14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
