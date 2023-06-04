import 'package:flutter/material.dart';

import '../../../services/constants/colors.dart';
import '../../../services/constants/images.dart';
import 'product_image.dart';

class ProductScreenImage extends StatelessWidget {
  final void Function() backButton;
  const ProductScreenImage({
    super.key,
    required this.backButton,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ProductImages(
        backOnPress: backButton,
        colors: [
          [AppColors.cFFFFFF.color, AppColors.c808080.color],
          [AppColors.cB4916C.color, AppColors.cF0F0F0.color],
          [AppColors.cE4CBAD.color, AppColors.cF0F0F0.color],
        ],
        images: [
          [
            AppImage.product9.img,
            AppImage.product10.img,
            AppImage.product11.img,
          ],
          [
            AppImage.product12.img,
            AppImage.product13.img,
            AppImage.product8.img,
          ],
          [
            AppImage.product7.img,
            AppImage.product6.img,
            AppImage.product5.img,
          ],
        ],
      ),
    );
  }
}
