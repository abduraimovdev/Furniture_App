import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/screens/home_screen.dart';
import 'package:furniture_app/screens/sign_up_screen.dart';

class SignInController extends BaseController {
  TextEditingController emailController;
  TextEditingController passwordController;
  void Function(void Function())? updater;
  bool isLoading = false;

  SignInController({this.updater})
      : emailController = TextEditingController(),
        passwordController = TextEditingController();

  @override
  void close() {
    emailController.dispose();
    passwordController.dispose();
    super.close();
  }

  void signIn(BuildContext context) async {

    isLoading = true;
    updater!(() {});

    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    // validation

    debugPrint(email);
    debugPrint(password);
    // connect network ...
    await Future.delayed(const Duration(seconds: 2));
    isLoading = false;
    updater!(() {});
    /// user exist:
    Navigator.of(context).pushReplacementNamed(HomeScreen.id);

    /// user not found: error message
  }

  void goToSignUp(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(SignUpScreen.id);
  }
}
