import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';
import 'tab_bar_widgets.dart';

class TabBarComponents extends StatefulWidget {
  const TabBarComponents({Key? key}) : super(key: key);

  @override
  State<TabBarComponents> createState() => _TabBarComponentsState();
}

class _TabBarComponentsState extends State<TabBarComponents> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CustomTabBaraWidget(
          onPressed: () {},
          text: Strings.popular.text,
          style: AppTextStyles.nunitoSansSemiBold14,
          color: AppColors.c303030.color,
          widget: SvgIcon.popular,
        ),
        const SizedBox(width: 25),
        CustomTabBaraWidget(
          onPressed: () {},
          text: Strings.chair.text,
          style: AppTextStyles.nunitoSansRegular14
              .copyWith(color: AppColors.c808080.color),
          color: AppColors.cF0F0F0.color,
          widget: SvgIcon.chair,
        ),
        const SizedBox(width: 25),
        CustomTabBaraWidget(
          onPressed: () {},
          text: Strings.table.text,
          style: AppTextStyles.nunitoSansRegular14
              .copyWith(color: AppColors.c808080.color),
          color: AppColors.cF0F0F0.color,
          widget: SvgIcon.table,
        ),
        const SizedBox(width: 25),
        CustomTabBaraWidget(
          onPressed: () {},
          text: Strings.armchair.text,
          style: AppTextStyles.nunitoSansRegular14
              .copyWith(color: AppColors.c808080.color),
          color: AppColors.cF0F0F0.color,
          widget: SvgIcon.armchair,
        ),
        const SizedBox(width: 25),
        CustomTabBaraWidget(
          onPressed: () {},
          text: Strings.bed.text,
          style: AppTextStyles.nunitoSansRegular14
              .copyWith(color: AppColors.c808080.color),
          color: AppColors.cF0F0F0.color,
          widget: SvgIcon.bed,
        ),
        const SizedBox(width: 25),
        CustomTabBaraWidget(
          onPressed: () {},
          text: Strings.lamb.text,
          style: AppTextStyles.nunitoSansRegular14
              .copyWith(color: AppColors.c808080.color),
          color: AppColors.cF0F0F0.color,
          widget: SvgIcon.lamp,
        ),
        const SizedBox(width: 25),
      ],
    );
  }
}
