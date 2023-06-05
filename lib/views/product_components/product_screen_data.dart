import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/product_controller.dart';
import 'package:furniture_app/screens/review_screen.dart';

import '../../services/constants/colors.dart';
import '../../services/constants/strings.dart';
import '../../services/constants/svg_icons.dart';
import '../../services/theme/text_styles.dart';
import 'icon_button.dart';

class ProductScreenData extends StatelessWidget {
  const ProductScreenData({
    super.key,

    required this.controller,
  });


  final ProductController controller;

  @override
  Widget build(BuildContext context) {
        double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return Expanded(
      flex: 3,
      child: Padding(
        padding: EdgeInsets.only(
            left: 25 * width,
            right: 25 * width,
            top: 25 * height,
            bottom: 25 * height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.minimalStand.text,
              style: AppTextStyles.gelasioMedium24,
            ),
            SizedBox(height: 10 * height),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${controller.sum}",
                  style: AppTextStyles.nunitoSansBold30,
                ),
                SizedBox(
                  width: 113 * width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIconButton(
                        w: width,
                        h: height,
                        icon: Icon(
                          CupertinoIcons.add,
                          color: AppColors.c909090.color,
                          size: 25,
                        ),
                        onPress: controller.increment,
                      ),
                      Text(
                        "${controller.count}".padLeft(2, "0"),
                        style: AppTextStyles.nunitoSansBold18,
                      ),
                      AppIconButton(
                        w: width,
                        h: height,
                        icon: Icon(
                          CupertinoIcons.minus,
                          color: AppColors.c909090.color,
                          size: 25,
                        ),
                        onPress: controller.decrement,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10 * height),
            Row(
              children: [
                SizedBox(
                  width: 20 * width,
                  height: 20 * height,
                  child: SvgIcon.star,
                ),
                SizedBox(width: 10 * width),
                GestureDetector(
                  onTap: () => controller.btnReview(context),
                  child: const Text(
                    "4.5",
                    style: AppTextStyles.nunitoSansBold18,
                  ),
                ),
                SizedBox(width: 20 * width),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(ReviewScreen.id);
                  },
                  child: Text(
                    "(50 reviews)",
                    style: AppTextStyles.nunitoSansBold14
                        .copyWith(color: AppColors.c808080.color),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14 * height),
            Text(
              controller.product.desc,
              style: AppTextStyles.nunitoSansLight14.copyWith(
                wordSpacing: 3,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
