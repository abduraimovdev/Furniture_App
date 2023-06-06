import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/screens/cart_screen.dart';
import 'package:furniture_app/screens/product_screen.dart';

class HomeController extends BaseController {
  int initialCategoryPage = 0;

  void Function(void Function())? updater;
  bool isLoading = false;

  HomeController({this.updater});


  void buttonTabBar(int index) {
    initialCategoryPage = index;
    updater!(() {});
  }

  void buttonProduct(BuildContext context) {
    Navigator.of(context).pushNamed(ProductScreen.id);
  }

  void buttonCard(BuildContext context) {
    Navigator.of(context).pushNamed(ProductScreen.id);
  }

  void buttonAppBarCard(BuildContext context) {
    Navigator.of(context).pushNamed(CartScreen.id);
  }
}
