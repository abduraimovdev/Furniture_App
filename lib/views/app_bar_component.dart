import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/favorite_controller.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final Widget leading;
  final bool action;
  final void Function() leadingPressed;
  final FavoriteController? controller;

  const AppBarComponent({
    Key? key,
    required this.title,
    required this.leading,
    required this.action,
    required this.leadingPressed,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: leadingPressed,
        child: Padding(
          padding: const EdgeInsets.all(12.5),
          child: leading,
        ),
      ),
      elevation: 0,
      title: title,
      centerTitle: true,
      actions: action
          ? [
              GestureDetector(
                onTap: () => controller,
                child: Padding(
                  padding: const EdgeInsets.all(12.5),
                  child: SvgIcon.cart,
                ),
              ),
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
