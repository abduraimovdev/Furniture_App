import 'package:flutter/material.dart';

import '../../../services/constants/colors.dart';

class AppIconButton extends StatefulWidget {
  final Widget icon;
  final void Function() onPress;
  final double? width;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;

  const AppIconButton({
    super.key,
    this.height,
    this.width,
    this.iconSize,
    this.w,
    this.h,
    this.backgroundColor,
    required this.icon,
    required this.onPress,
  });

  final double? w;
  final double? h;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: widget.backgroundColor ?? AppColors.cE0E0E0.color.withOpacity(0.3),
        minimumSize: Size(
            widget.width ?? 30 * widget.w!, widget.width ?? 30 * widget.h!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: widget.onPress,
      child: widget.icon,
    );
  }
}
