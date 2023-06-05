import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class CartItemWidget extends StatefulWidget {
  final AssetImage imageLink;
  final String textLink;
  final double price;
  final void Function(double price) changed;
  const CartItemWidget(
      {super.key,
      required this.price,
      required this.imageLink,
      required this.textLink,
      required this.changed});

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int count1 = 0;
  double sum = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: widget.imageLink, fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.textLink,
                  style: AppTextStyles.nunitoSansBold14
                      .copyWith(color: AppColors.c606060.color),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: 130,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          ++count1;
                          sum += widget.price;

                          widget.changed(sum);
                          setState(() {});
                        },
                        child: ComponentButtonPlusMinus(icon: SvgIcon.add),
                      ),
                      Text(
                        "$count1".padLeft(2, "0"),
                        style: AppTextStyles.nunitoSansBold18,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (count1 > 0) {
                              --count1;
                              sum -= widget.price;
                              widget.changed(sum);
                            }
                          });
                        },
                        child: ComponentButtonPlusMinus(icon: SvgIcon.minus),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(flex: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(onTap: () {}, child: SvgIcon.cancel),
              const Spacer(flex: 1),
              Text(
                "\$ $sum",
                style: AppTextStyles.nunitoSansBold16
                    .copyWith(color: AppColors.c303030.color),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TotalSumm extends StatefulWidget {
  final double total;
  const TotalSumm({required this.total, super.key});

  @override
  State<TotalSumm> createState() => _TotalSummState();
}

class _TotalSummState extends State<TotalSumm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              Strings.total.text,
              style: AppTextStyles.nunitoSansBold20
                  .copyWith(color: AppColors.c808080.color),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              "\$ ${widget.total}",
              style: AppTextStyles.nunitoSansBold20,
            ),
          ],
        ),
      ),
    );
  }
}

class ComponentButtonPlusMinus extends StatelessWidget {
  final SvgPicture icon;
  const ComponentButtonPlusMinus({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.cE0E0E0.color),
        child: Transform.scale(scale: 0.6, child: icon),
      ),
    );
  }
}