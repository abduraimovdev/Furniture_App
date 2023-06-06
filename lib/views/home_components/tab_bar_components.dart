import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'tab_bar_widgets.dart';

class TabBarComponents extends StatefulWidget {
  final HomeController controller;
  const TabBarComponents({Key? key, required this.controller}) : super(key: key);

  @override
  State<TabBarComponents> createState() => _TabBarComponentsState();
}

class _TabBarComponentsState extends State<TabBarComponents> {
 late final ScrollController scrollController;
  List<SvgPicture> listIcon = [
    SvgIcon.popular,
    SvgIcon.chair,
    SvgIcon.table,
    SvgIcon.armchair,
    SvgIcon.bed,
    SvgIcon.lamp
  ];
  List<String> listTitle = [
    Strings.popular.text,
    Strings.chair.text,
    Strings.table.text,
    Strings.armchair.text,
    Strings.bed.text,
    Strings.lamb.text
  ];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }
  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: listIcon.length,
      primary: false,
      itemBuilder: (context, index) {
        return CustomTabBarWidget(
          onPressed: () => widget.controller.buttonTabBar(index),
          text: listTitle[index],
          style: AppTextStyles.nunitoSansSemiBold14,
          color: widget.controller.initialCategoryPage == index ? AppColors.c303030 : AppColors.cF0F0F0,
          widget: listIcon[index],
        );
      },
      separatorBuilder: (context,index) =>
          const SizedBox(width: 25),
    );
  }
}
