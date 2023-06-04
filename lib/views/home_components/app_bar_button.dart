import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';
import 'package:furniture_app/services/theme/text_styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      leading: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SvgIcon.search,
        ),
      ),
      title: Column(
        children: [
          Text(
            Strings.makeHome.text,
            style: AppTextStyles.gelasioSemiBold18.copyWith(
              color: AppColors.c909090.color,
            ),
          ),
          Text(
            Strings.beautiful.text,
            style: AppTextStyles.gelasioBold30.copyWith(
                color: AppColors.c303030.color,
                fontSize: 18
            ),
          ),
        ],
      ),
      elevation: 0,
      actions: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgIcon.cart,
          ),
        ),
      ],
    );
  }
}
