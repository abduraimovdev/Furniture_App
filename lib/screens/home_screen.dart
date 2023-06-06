import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'package:furniture_app/views/app_bar_component.dart';
import 'package:furniture_app/views/home_components/products_components.dart';
import 'package:furniture_app/views/home_components/tab_bar_components.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarComponent(title: Column(
        children: [
          Text(
            Strings.makeHome.text,
            style: AppTextStyles.gelasioSemiBold18.copyWith(
              color: AppColors.c909090,
            ),
          ),
          Text(
            Strings.beautiful.text,
            style: AppTextStyles.gelasioBold30.copyWith(
                color: AppColors.c303030,
                fontSize: 18
            ),
          ),
        ],
      ), leading: SvgIcon.search, action: true, leadingPressed: () {}),
      body: Column(
        children: [
          Expanded(
            flex: size.height > 550 ? 2 : 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TabBarComponents(controller: controller),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomProduct(
                controller: controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
