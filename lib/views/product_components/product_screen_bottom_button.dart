import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';

import '../../services/constants/colors.dart';
import '../../services/constants/strings.dart';
import '../../services/constants/svg_icons.dart';
import 'icon_button.dart';
import 'text_button.dart';

class ProductScreenBottomButton extends StatefulWidget {
  final ProductController controller;

  const ProductScreenBottomButton({
    super.key,
    required this.controller,
  });


  @override
  State<ProductScreenBottomButton> createState() =>
      _ProductScreenBottomButtonState();
}

class _ProductScreenBottomButtonState extends State<ProductScreenBottomButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20 * width,
          right: 25 * width,
          bottom: 30 * height,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIconButton(
              width: 60 * width,
              height: 60 * height,
              icon: widget.controller.isFavourite
                  ? SvgIcon.marker
                  : SvgIcon.markerDark,
              onPress: widget.controller.btnFavourite,
              backgroundColor: widget.controller.isFavourite
                  ? AppColors.c303030.color
                  : AppColors.cE0E0E0.color.withOpacity(0.3),
            ),
            AppTextButton(
              label: Strings.addToCart.text,
              onPress: () => widget.controller.addToCard(context),
            ),
          ],
        ),
      ),
    );
  }
}
