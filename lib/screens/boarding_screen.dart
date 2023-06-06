import 'package:flutter/material.dart';
import 'package:furniture_app/services/app_routes.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/utils/app_size_components.dart';
import 'package:furniture_app/views/get_started_button.dart';

class BoardingScreen extends StatelessWidget {
  static const id = "/boarding";

  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        height: height,
        width: width,

        /// #backgroundImage
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AppImage.onBoarding.img, fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedHeight(height: 30),

              /// #subtitle
              Text(
                Strings.make.text,
                style: AppTextStyles.gelasioSemiBold24.copyWith(
                  color: AppColors.c606060,
                ),
              ),
              const SizedHeight(height: 15),

              /// #title
              Text(Strings.home.text, style: AppTextStyles.gelasioBold30),
              const SizedHeight(height: 35),

              /// #description
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  Strings.theIntroText.text,
                  style: AppTextStyles.nunitoSansRegular18.copyWith(
                    color: AppColors.c808080,
                    height: 1.94,
                    wordSpacing: 5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedHeight(height: 155),

              /// #getSterted
              const Center(
                child: GetStartedButton(
                  onPressWithContext: AppRoutes.pushReplaceSignIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
