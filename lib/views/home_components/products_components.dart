import 'package:flutter/material.dart';
import 'package:furniture_app/screens/product_screen.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'products_widgets.dart';

class CustomProduct extends StatefulWidget {
  const CustomProduct({Key? key}) : super(key: key);

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            CustomProductWidget(
              onPressedProduct: () {
                Navigator.of(context).pushNamed(ProductScreen.id);
              },
              imageProvider: AppImage.product1.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Coffee Table",
              subTitle: "\$ 50.00",
            ),
            const SizedBox(width: 20),
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product2.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Thermos",
              subTitle: "\$ 25.00",
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product3.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Tea powder",
              subTitle: "\$ 99.89",
            ),
            const SizedBox(width: 20),
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product4.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Facecream",
              subTitle: "\$ 6.89",
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product5.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Sunscreen lotion",
              subTitle: "\$ 8.99",
            ),
            const SizedBox(width: 20),
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product6.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Apple Watch 3",
              subTitle: "\$ 299.00",
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product7.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Simple Desk",
              subTitle: "\$ 50.00",
            ),
            const SizedBox(width: 20),
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product8.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Mi backpack",
              subTitle: "\$ 99.00",
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product9.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Wooden table",
              subTitle: "\$ 455.00",
            ),
            const SizedBox(width: 20),
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product10.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Nike black Shoe",
              subTitle: "\$ 399.00",
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product11.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Black Simple Lamp",
              subTitle: "\$ 12.00",
            ),
            const SizedBox(width: 20),
            CustomProductWidget(
              onPressedProduct: () {},
              imageProvider: AppImage.product12.img,
              onPressedCart: () {},
              widget: SvgIcon.bag,
              title: "Sony headphone",
              subTitle: "\$ 126.00",
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
