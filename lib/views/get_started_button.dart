import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class GetStartedButton extends StatelessWidget {
  final void Function(BuildContext) onPressWithContext;
  const GetStartedButton({
    super.key,
    required this.onPressWithContext
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onPressWithContext(context),
      color: AppColors.c212121,
      height: 55,
      minWidth: 160,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)),
      child: Text(
        Strings.getStarted.text,
        textScaleFactor: 1.075,
        style: AppTextStyles.gelasioSemiBold18.copyWith(
          color: AppColors.cFFFFFF,
        ),
      ),
    );
  }
}
