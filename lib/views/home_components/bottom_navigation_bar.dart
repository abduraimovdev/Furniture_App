import 'package:flutter/material.dart';
import 'package:furniture_app/controllers/home_screen_controller.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final HomeController controller;
  const CustomBottomNavigationBar({Key? key , required this.controller}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (page) => widget.controller.buttonNavigationBar(page),
      items: [
        BottomNavigationBarItem(icon: widget.controller.initialPage == 0 ? SvgIcon.homeFill : SvgIcon.home, label: ''),
        BottomNavigationBarItem(icon: widget.controller.initialPage == 1 ? SvgIcon.markerFill : SvgIcon.marker , label: ''),
        BottomNavigationBarItem(icon: widget.controller.initialPage == 2 ? SvgIcon.bellFill : SvgIcon.bell, label: ''),
        BottomNavigationBarItem(icon: widget.controller.initialPage == 3 ? SvgIcon.personFill : SvgIcon.person, label: ''),
      ],
    );
  }
}
