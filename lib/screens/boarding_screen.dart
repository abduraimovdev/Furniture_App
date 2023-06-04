import 'package:flutter/material.dart';
import 'package:furniture_app/screens/sing_in_screen.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
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
              SizedBox(height: 30 * height / 815),

              /// #subtitle
              Text(
                Strings.make.text,
                style: AppTextStyles.gelasioSemiBold24.copyWith(
                  color: AppColors.c606060.color,
                ),
              ),
              SizedBox(height: 15 * height / 815),

              /// #title
              Text(Strings.home.text, style: AppTextStyles.gelasioBold30),
              SizedBox(height: 35 * height / 815),

              /// #description
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(Strings.theIntroText.text,
                    style: AppTextStyles.nunitoSansRegular18.copyWith(
                        color: AppColors.c808080.color,
                        height: 1.94,
                        wordSpacing: 5),
                    textAlign: TextAlign.justify),
              ),
              SizedBox(height: 155 * height / 815),

              /// #getSterted
              Center(
                child: GetStartedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, SignInScreen.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
