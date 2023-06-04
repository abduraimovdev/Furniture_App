import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
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
  int _count = 01;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 812;
    double width = MediaQuery.of(context).size.width / 375;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //
          ProductScreenImage(
            backButton: btnBack,
          ),

          //
          ProductScreenData(
            width: width,
            height: height,
            count: _count,
            decrement: btnDecrement,
            increment: btnIncrement,
          ),
          
          ProductScreenBottomButton(
            width: width,
            height: height,
            onPress: () => btnAdd(context),
          ),
        ],
      ),
    );
  }

  void btnBack() {
    Navigator.of(context).pop();
  }

  void btnIncrement() {
    setState(() => _count++);
  }

  void btnDecrement() {
    if (_count > 0) {
      setState(() => _count--);
    }
  }

  void btnAdd(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.c303030.color,
        content: const Text(
          "Successfully Added",
          style: AppTextStyles.nunitoSansBold14,
        ),
      ),
    );
  }
}
