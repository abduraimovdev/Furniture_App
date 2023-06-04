import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../services/constants/colors.dart';
import '../../services/constants/strings.dart';
import '../../services/constants/svg_icons.dart';
import '../../services/theme/text_styles.dart';
import 'icon_button.dart';

class ProductScreenData extends StatelessWidget {
  const ProductScreenData({
    super.key,
    required this.width,
    required this.height,
    required int count,
    required this.decrement,
    required this.increment,
  }) : _count = count;

  final double width;
  final double height;
  final int _count;
  final void Function() increment;
  final void Function() decrement;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: EdgeInsets.only(
            left: 25 * width, right: 25 * width, top: 25 * height, bottom: 25 * height),
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
                const Text(
                  "\$ 50",
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
                        onPress: increment,
                      ),
                      Text(
                        "$_count".padLeft(2, "0"),
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
                        onPress: decrement,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10 * height),
            GestureDetector(
              onTap: () => btnReview(context),
              child: Row(
                children: [
                  SizedBox(
                    width: 20 * width,
                    height: 20 * height,
                    child: SvgIcon.star,
                  ),
                  SizedBox(width: 10 * width),
                  const Text(
                    "4.5",
                    style: AppTextStyles.nunitoSansBold18,
                  ),
                  SizedBox(width: 20 * width),
                  Text(
                    "(50 reviews)",
                    style: AppTextStyles.nunitoSansBold14
                        .copyWith(color: AppColors.c808080.color),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14 * height),
            Text(
              "Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ",
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

  void btnReview(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (context) => BottomSheet(
        onClosing: () {},
        builder: (context) => Container(
          width: MediaQuery.of(context).size.width * .8,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
