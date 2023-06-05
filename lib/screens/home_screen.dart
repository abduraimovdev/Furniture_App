import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/screens/favorite_screen.dart';
import 'package:furniture_app/screens/notification_screen.dart';
import 'package:furniture_app/screens/profile_screen.dart';
import 'package:furniture_app/views/home_components/app_bar_button.dart';
import 'package:furniture_app/views/home_components/bottom_navigation_bar.dart';
import 'package:furniture_app/views/home_components/products_components.dart';
import 'package:furniture_app/views/home_components/tab_bar_components.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeController controller;
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    controller = HomeController(updater: setState, pageController: pageController);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) => controller.buttonPageView(index),
        children:  [
          MainPage(controller: controller),
          const FavoriteScreen(),
          const NotificationScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar:  CustomBottomNavigationBar(controller: controller),
    );
  }
}

class MainPage extends StatefulWidget {
  final HomeController controller;

  const MainPage({Key? key, required this.controller}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(controller: widget.controller),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TabBarComponents(controller: widget.controller),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomProduct(controller: widget.controller,),
            ),
          ),
        ],
      ),
    );
  }
}
