import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/screens/cart_screen.dart';
import 'package:furniture_app/screens/product_screen.dart';
import 'package:furniture_app/services/data/database/products.dart';


class FavoriteController extends BaseController{
  void Function(void Function())? updater;
  void goToCongrats(BuildContext context) {
    Navigator.pushNamed(context, CartScreen.id);
  }

  void buttonProduct(BuildContext context) {
    Navigator.of(context).pushNamed(ProductScreen.id);
  }

  FavoriteController({this.updater});
  void productDelete(int index){
    productsList.removeAt(index);
    updater!((){});
  }
}