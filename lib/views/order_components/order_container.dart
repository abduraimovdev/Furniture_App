import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/order_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

import 'detail_button.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final navController=OrderController();
    return Container(
      height: height * .21,
      width: width * .89,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.cFFFFFF.color),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * .018,
            ),

            ///# Order and data
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  Strings.orderNo.text,
                  style: AppTextStyles.nunitoSansBold16
                      .copyWith(color: AppColors.c303030.color),
                ),
                Text(
                  Strings.data.text,
                  style: AppTextStyles.nunitoSansSemiBold16
                      .copyWith(color: AppColors.c909090.color),
                ),
              ],
            ),
            Divider(
              color: AppColors.cF0F0F0.color,
              thickness: 2,
              height: height * .0363,
            ),

            ///# quantity and amount Total
            Row(
              children: [
                SizedBox(
                  width: width * .0683,
                ),
                Text(
                  Strings.quantity.text,
                  style: AppTextStyles.nunitoSansSemiBold16
                      .copyWith(color: AppColors.c909090.color),
                ),
                Text(
                  Strings.quantityNum.text,
                  style: AppTextStyles.nunitoSansBold16
                      .copyWith(color: AppColors.c303030.color),
                ),
                SizedBox(
                  width: width * .119,
                ),
                Text(
                  Strings.totalAmount.text,
                  style: AppTextStyles.nunitoSansSemiBold16
                      .copyWith(color: AppColors.c909090.color),
                ),
                Text(
                  Strings.price.text,
                  style: AppTextStyles.nunitoSansBold16
                      .copyWith(color: AppColors.c303030.color),
                ),
              ],
            ),
            SizedBox(
              height: width * .03,
            ),

            ///#button and delivered
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailButton(
                  onPressed: ()=> navController.goToDetail(context),
                ),
                SizedBox(
                  width: width * .37,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * .0157,
                    ),
                    Text(
                      Strings.delivered.text,
                      style: AppTextStyles.nunitoSansSemiBold16
                          .copyWith(color: AppColors.c27AE60.color),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
