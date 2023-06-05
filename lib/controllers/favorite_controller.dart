import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import '../screens/congrats_screen.dart';

class FavoriteController extends BaseController{
  void goToCongrats(BuildContext context) {
    Navigator.pushNamed(context, CongratsScreen.id);
  }
}