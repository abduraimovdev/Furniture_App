import 'package:flutter/material.dart';
import '../services/constants/colors.dart';
import '../services/theme/text_styles.dart';

class LoginButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const LoginButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 10,
      color: AppColors.c212121.color,
      height: 55,
      minWidth: MediaQuery.of(context).size.width * 0.8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        text,
        textScaleFactor: 1.075,
        style: AppTextStyles.nunitoSansSemiBold18.copyWith(
          color: AppColors.cFFFFFF.color,
        ),
      ),
    );
  }
}
