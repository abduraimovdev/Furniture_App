import 'package:flutter/cupertino.dart';
import 'package:furniture_app/controllers/base_controller.dart';
import 'package:furniture_app/screens/sing_in_screen.dart';

class SignUpController extends BaseController {
  TextEditingController nameController;
  TextEditingController emailController;
  TextEditingController passwordController;
  TextEditingController rePasswordController;

  void Function(void Function())? updater;
  bool isLoading = false;

  SignUpController({this.updater})
      : nameController = TextEditingController(),
        emailController = TextEditingController(),
        passwordController = TextEditingController(),
        rePasswordController = TextEditingController();

  @override
  void close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.close();
  }

  void signUp(BuildContext context) async {

    isLoading = true;
    updater!((){});

    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String rePassword = rePasswordController.text.trim();

    debugPrint(name);
    debugPrint(email);
    debugPrint(password);
    debugPrint(rePassword);

    await Future.delayed(const Duration(seconds: 2));
    isLoading = false;
    updater!((){});

    Navigator.of(context).pushReplacementNamed(SignInScreen.id);
  }

  void goToSignIn(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(SignInScreen.id);
  }
}
