import 'package:flutter/material.dart';

import '../../../services/constants/colors.dart';
import '../../../services/constants/strings.dart';
import '../../../services/constants/svg_icons.dart';
import 'icon_button.dart';
import 'text_button.dart';

class ProductScreenBottomButton extends StatefulWidget {
  final void Function() onPress;

  const ProductScreenBottomButton({
    super.key,
    required this.width,
    required this.height,
    required this.onPress,
  });

  final double width;
  final double height;

  @override
  State<ProductScreenBottomButton> createState() =>
      _ProductScreenBottomButtonState();
}

class _ProductScreenBottomButtonState extends State<ProductScreenBottomButton> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20 * widget.width,
          right: 25 * widget.width,
          bottom: 30 * widget.height,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIconButton(
              width: 60 * widget.width,
              height: 60 * widget.height,
              icon: isSaved ? SvgIcon.marker : SvgIcon.markerDark,
              onPress: btnSave,
              backgroundColor: isSaved
                  ? AppColors.c303030.color
                  : AppColors.cE0E0E0.color.withOpacity(0.3),
            ),
            AppTextButton(
              w: widget.width,
              h: widget.height,
              label: Strings.addToCart.text,
              onPress: widget.onPress,
            ),
          ],
        ),
      ),
    );
  }

  void btnSave() {
    setState(() {
      isSaved = !isSaved;
    });
  }
}
