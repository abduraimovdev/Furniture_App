import 'package:flutter/material.dart';
import 'package:furniture_app/screens/profile_screen.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

import 'order_internal/canceled_screen.dart';
import 'order_internal/delivered_screen.dart';
import 'order_internal/processing_screen.dart';

class OrderScreen extends StatefulWidget {
  static const id = "/order";

  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  int currentIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(ProfileScreen.id);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.c303030.color,
          ),
        ),
        elevation: 0,
        title: Text(
          Strings.myOrders.text,
          style: AppTextStyles.merriWeatherBold18.copyWith(
            color: AppColors.c303030.color,
          ),
        ),
        bottom: TabBar(
          indicatorColor: AppColors.c303030.color,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 3, color: AppColors.c303030.color),
            insets: const EdgeInsets.symmetric(horizontal: 43),
            borderRadius: BorderRadius.circular(4),
          ),
          controller: controller,
          labelColor: AppColors.c303030.color,
          tabs: [
            Tab(
                icon: Text(Strings.delivered.text,
                    style: AppTextStyles.nunitoSansRegular18)),
            Tab(
                icon: Text(Strings.processing.text,
                    style: AppTextStyles.nunitoSansRegular18)),
            Tab(
                icon: Text(Strings.canceled.text,
                    style: AppTextStyles.nunitoSansRegular18)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          ///#Delivered Order Page
          DeliveredScreen(),
          ///#Processing Order Page
          ProcessingScreen(),
          ///#Canceled Order Page
          CanceledScreen(),
        ],
      ),
    );
  }
}
