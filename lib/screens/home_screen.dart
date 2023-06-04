import 'package:flutter/material.dart';
import 'package:furniture_app/screens/favorite_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          MainPage(),
          FavoriteScreen(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: TabBarComponents(),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: CustomProduct(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
