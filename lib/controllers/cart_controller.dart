import 'package:flutter/material.dart';

import 'base_controller.dart';

class CartController extends BaseController {
  TextEditingController controller;
  void Function(void Function())? updater;
  bool isLoading = false;

  CartController({this.updater}) : controller = TextEditingController();

  @override
  void close() {
    controller.dispose();
    super.close();
  }
}
