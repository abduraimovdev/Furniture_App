import 'package:flutter/material.dart';

import '../../../services/constants/colors.dart';
import '../../../services/theme/text_styles.dart';

class AppTextButton extends StatelessWidget {
  final void Function() onPress;
  final String label;
  const AppTextButton({
    super.key,
    required this.w,
    required this.h,
    required this.onPress,
    required this.label,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.c303030.color,
          minimumSize: Size(250 * w, 60 * h),
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          shadowColor: AppColors.c303030.color.withOpacity(0.4),
        ),
        onPressed: onPress,
        child: Text(
          label,
          style: AppTextStyles.nunitoSansSemiBold20,
        ),
      ),
    );
  }
}
