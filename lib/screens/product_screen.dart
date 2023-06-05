import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/product_controller.dart';
import 'package:furniture_app/models/category_model.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/models/review_model.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/views/product_components/product_screen_bottom_button.dart';
import 'package:furniture_app/views/product_components/product_screen_data.dart';
import 'package:furniture_app/views/product_components/product_screen_image.dart';


class ProductScreen extends StatefulWidget {
  static const id = "/product";
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late final ProductController controller;
  Product product = Product(
    id: "s123m123",
    name: "Minimal Stand",
    desc:
        "Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ",
    createdAt: "2022/12/02",
    modifyAt: "2023/12/02",
    images: {
      0: [
        "assets/images/img_product_9.png",
        "assets/images/img_product_10.png",
        "assets/images/img_product_11.png",
      ],
      1: [
        "assets/images/img_product_12.png",
        "assets/images/img_product_13.png",
        "assets/images/img_product_8.png",
      ],
      2: [
        "assets/images/img_product_7.png",
        "assets/images/img_product_6.png",
        "assets/images/img_product_5.png",
      ],
      3: [
        "assets/images/img_product_7.png",
        "assets/images/img_product_6.png",
        "assets/images/img_product_5.png",
      ],
    },
    colors: [
      int.tryParse(AppColors.c808080.title) ?? 0xFF000000,
      int.tryParse(AppColors.cB4916C.title) ?? 0xFF000000,
      int.tryParse(AppColors.cE4CBAD.title) ?? 0xFF000000,
      int.tryParse(AppColors.cE4CBAD.title) ?? 0xFF000000,
    ],
    sku: "12234567765",
    category: Category(
        id: "as12",
        name: "Mebel",
        description: "Mebellar Joyi",
        createdAt: "asd",
        modifyAt: 'DAs',
        icon: ""),
    price: 50,
    review: [
      Review(
          id: "01",
          productId: "s123m123",
          userId: "12312sdcsd",
          createdAt: "sa",
          comment: "Chotki",
          rating: "zor"),
    ],
    isFavorite: false,
    totalQuantity: {},
  );
  @override
  void initState() {
    controller = ProductController(updater: setState, product: product);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height / 812;
    // double width = MediaQuery.of(context).size.width / 375;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          ProductScreenImage(
            // backButton: () => controller.btnBack(context),
            controller: controller,
          ),

          //
          ProductScreenData(
            controller: controller,
          ),

          ProductScreenBottomButton(
            controller: controller,
          ),
        ],
      ),
    );
  }
}
