import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';

import '../../services/constants/colors.dart';

class ProductImages extends StatefulWidget {
  final ProductController controller;

  const ProductImages({
    super.key,
    required this.controller,
  });

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  int colorPage = 0;
  int page = 0;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 812;
    double w = MediaQuery.of(context).size.width / 375;
    return Stack(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 52 * w),
              child: SizedBox(
                width: 323 * w,
                height: 455 * h,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                  child: PageView(
                    onPageChanged: (value) => setState(() => page = value),
                    controller: pageController,
                    children: [
                      for (var item
                          in widget.controller.product.images[colorPage]!)
                        Image(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.7, 0.85),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0;
                      i < widget.controller.product.images[colorPage]!.length;
                      i++)
                    GestureDetector(
                      onTap: () => setState(() {
                        page = 2;
                        pageController.jumpToPage(2);
                      }),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        width: page == i ? 30 * w : 15 * w,
                        height: 4 * h,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: page == i
                              ? AppColors.c303030.color
                              : AppColors.cF0F0F0.color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20 * w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => widget.controller.btnBack(context),
                child: Container(
                  width: 50 * w,
                  height: 50 * h,
                  margin: EdgeInsets.only(left: 7 * w, top: 59 * h),
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF.color,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                        color: const Color(0xFF8A959E).withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.chevron_left_outlined,
                    size: 40,
                    color: AppColors.c303030.color,
                  ),
                ),
              ),
              ProductImageColors(
                  colors: widget.controller.product.colors,
                  onChanged: (newColorPage) {
                    page = 0;
                    pageController.jumpToPage(page);
                    setState(() => colorPage = newColorPage);
                  }),
            ],
          ),
        )
      ],
    );
  }
}

class ProductImageColors extends StatefulWidget {
  final List<int> colors;
  final void Function(int value) onChanged;
  const ProductImageColors({
    super.key,
    required this.colors,
    required this.onChanged,
  });

  @override
  State<ProductImageColors> createState() => _ProductImageColorsState();
}

class _ProductImageColorsState extends State<ProductImageColors> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;
    return Container(
      width: 64 * width,
      height: 192 * height,
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.only(top: 33 * height),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF.color,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, 4),
            color: const Color(0xFF8A959E).withOpacity(0.3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < widget.colors.length; i++)
              GestureDetector(
                onTap: () {
                  widget.onChanged(i);
                },
                child: Container(
                  width: 34 * width,
                  height: 34 * height,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(widget.colors[i]),
                    border: Border.all(
                      color: Color(widget.colors[i]),
                      width: 5 * width,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
