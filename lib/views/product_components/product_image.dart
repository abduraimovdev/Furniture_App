import 'package:flutter/material.dart';

import '../../services/constants/colors.dart';

class ProductImages extends StatefulWidget {
  final void Function() backOnPress;
  final List<List<Color>> colors;
  final List<List<AssetImage>> images;

  const ProductImages({
    super.key,
    required this.backOnPress,
    required this.colors,
    required this.images,
  });

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  PageController controller = PageController(initialPage: 0, keepPage: true);
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
                    controller: controller,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                        ),
                        child: Image(
                          image: widget.images[colorPage][0],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image(
                        image: widget.images[colorPage][1],
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: widget.images[colorPage][2],
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
                  GestureDetector(
                    onTap: () => setState(() {
                      page = 0;
                      controller.jumpToPage(0);
                    }),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: page == 0 ? 30 * w : 15 * w,
                      height: 4 * h,
                      decoration: BoxDecoration(
                        color: page == 0
                            ? AppColors.c303030.color
                            : AppColors.cF0F0F0.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(width: 10 * w),
                  GestureDetector(
                    onTap: () => setState(() {
                      page = 1;
                      controller.jumpToPage(1);
                    }),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: page == 1 ? 30 * w : 15 * w,
                      height: 4 * h,
                      decoration: BoxDecoration(
                        color: page == 1
                            ? AppColors.c303030.color
                            : AppColors.cF0F0F0.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(width: 10 * w),
                  GestureDetector(
                    onTap: () => setState(() {
                      page = 2;
                      controller.jumpToPage(2);
                    }),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: page == 2 ? 30 * w : 15 * w,
                      height: 4 * h,
                      decoration: BoxDecoration(
                        color: page == 2
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
              Container(
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
              ProductImageColors(
                w: w,
                h: h,
                colors: widget.colors,
                onChanged: (newColorPage) =>
                    setState(() => colorPage = newColorPage),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ProductImageColors extends StatefulWidget {
  final List<List<Color>> colors;
  final void Function(int value) onChanged;
  const ProductImageColors({
    super.key,
    required this.w,
    required this.h,
    required this.colors,
    required this.onChanged,
  });

  final double w;
  final double h;

  @override
  State<ProductImageColors> createState() => _ProductImageColorsState();
}

class _ProductImageColorsState extends State<ProductImageColors> {
  @override
  Widget build(BuildContext context) {
    return widget.colors.length == 3
        ? Container(
            width: 64 * widget.w,
            height: 192 * widget.h,
            margin: EdgeInsets.only(top: 33 * widget.h),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    widget.onChanged(0);
                  },
                  child: Container(
                    width: 34 * widget.w,
                    height: 34 * widget.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.colors[0][0],
                        border: Border.all(
                          color: widget.colors[0][1],
                          width: 5 * widget.w,
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    widget.onChanged(1);
                  },
                  child: Container(
                    width: 34 * widget.w,
                    height: 34 * widget.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.colors[1][0],
                        border: Border.all(
                          color: widget.colors[1][1],
                          width: 5 * widget.w,
                        )),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    widget.onChanged(2);
                  },
                  child: Container(
                    width: 34 * widget.w,
                    height: 34 * widget.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.colors[2][0],
                        border: Border.all(
                          color: widget.colors[2][1],
                          width: 5 * widget.w,
                        )),
                  ),
                ),
              ],
            ),
          )
        : const SizedBox.shrink();
  }
}
