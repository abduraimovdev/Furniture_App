import 'package:flutter/material.dart';
import 'package:furniture_app/models/cart_model.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

import 'base_controller.dart';

class CartController extends BaseController {
  TextEditingController controller;
  void Function(void Function())? updater;
  bool isLoading = false;
  CartModel cart;

  CartController({this.updater, required this.cart})
      : controller = TextEditingController();

  @override
  void close() {
    controller.dispose();
    super.close();
  }

  void decrement(
    int index,
  ) {
    if (cart.carts[index].quantity > 1) {
      cart.carts[index].quantity--;
      cart.carts[index].total -= cart.carts[index].product.price;
      updater!(() {});
    }
  }

  void increment(int index) {
    cart.carts[index].quantity++;
    cart.carts[index].total += cart.carts[index].product.price;

    updater!(() {});
  }

  void getBack(BuildContext context) {
    Navigator.pop(context);
  }

  void buttomCardItemDelate(int index, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("You want to remove from Cart?",
              style: AppTextStyles.nunitoSansBold20),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                cart.carts.removeAt(index);
                Navigator.pop(context);
                updater!(() {});
              },
              child: const Text("Yes",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.cEB5757)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "No",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        );
      },
    );
  }
}
