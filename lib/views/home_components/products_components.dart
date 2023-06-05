import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/views/home_components/products_widgets.dart';

class CustomProduct extends StatefulWidget {
  final HomeController controller;

  const CustomProduct({Key? key, required this.controller}) : super(key: key);

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  late final ScrollController scrollController;
  List<AppImage> list = [
    AppImage.product,
    AppImage.product1,
    AppImage.product2,
    AppImage.product3,
    AppImage.product4,
    AppImage.product5,
    AppImage.product6,
    AppImage.product7,
    AppImage.product8,
    AppImage.product9,
    AppImage.product10,
    AppImage.product11,
    AppImage.product12,
    AppImage.product13,
  ];
  List<String> title = [
    "Coffee Table",
    "Thermos",
    "Tea powder",
    "Facecream",
    "Sunscreen lotion",
    "Apple Watch 3",
    "Simple Desk",
    "Mi backpack",
    "Wooden table",
    "Nike black Shoe",
    "Black Simple Lamp",
    "Sony headphone",
    "Black Simple Lamp",
    "Sony headphone",
  ];

  List<String> subTitle = [
    "\$ 50.00",
    "\$ 25.00",
    "\$ 99.89",
    "\$ 6.89",
    "\$ 8.99",
    "\$ 299.00",
    "\$ 50.00",
    "\$ 99.00",
    "\$ 455.00",
    "\$ 399.00",
    "\$ 12.00",
    "\$ 126.00",
    "\$ 12.00",
    "\$ 126.00",
  ];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 3.3,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) =>
          CustomProductWidget(
            onPressedProduct: () => widget.controller.buttonProduct(context),
            imageProvider: list[index].img,
            onPressedCart: () {},
            widget: SvgIcon.bag,
            title: title[index],
            subTitle: subTitle[index],
          ),
    );
  }
}