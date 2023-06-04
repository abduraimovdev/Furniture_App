import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';

import '../services/constants/colors.dart';
import '../services/constants/strings.dart';
import '../services/theme/text_styles.dart';

class CongratsScreen extends StatelessWidget {
  static const id = "/congrats";

  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 7,),
            Text(
              Strings.success.text,
              style: AppTextStyles.merriWeatherBold36.copyWith(
                color: AppColors.c303030.color,
                letterSpacing: 4,
              ),
            ),
            const Spacer(flex: 2,),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 260,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AppImage.logo.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgIcon.checkmark,
                ),
              ],
            ),
            const Spacer(flex: 2,),
            Text(
              Strings.yourOrderWill.text,
              style: AppTextStyles.nunitoSansRegular18.copyWith(
                color: AppColors.c303030.color,
                height: 2,
              ),
            ),
            const Spacer(flex: 2,),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: 10,
                shadowColor: AppColors.c303030.color,
                backgroundColor: AppColors.c303030.color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minimumSize: const Size(315, 60),
              ),
              child: Text(
                Strings.trackYourOrder.text,
                style: AppTextStyles.nunitoSansSemiBold18
                    .copyWith(
                  color: AppColors.cFFFFFF.color,
                ),
              ),
            ),
            const Spacer(flex: 1,),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.cFFFFFF.color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: AppColors.c303030.color),
                ),
                minimumSize: const Size(315, 60),
              ),
              child: Text(
                Strings.backToHome.text,
                style: AppTextStyles.nunitoSansSemiBold18
                    .copyWith(
                  color: AppColors.c303030.color,
                ),
              ),
            ),
            const Spacer(flex: 6,),
          ],
        ),
      ),
    );
  }
}
