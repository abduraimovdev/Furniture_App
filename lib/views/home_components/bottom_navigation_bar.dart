import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/svg_icons.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int initialPage = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          initialPage = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: initialPage == 0 ? SvgIcon.homeFill : SvgIcon.home, label: ''),
        BottomNavigationBarItem(icon: initialPage == 1 ? SvgIcon.markerFill : SvgIcon.marker , label: ''),
        BottomNavigationBarItem(icon: initialPage == 2 ? SvgIcon.bellFill : SvgIcon.bell, label: ''),
        BottomNavigationBarItem(icon: initialPage == 3 ? SvgIcon.personFill : SvgIcon.person, label: ''),
      ],
    );
  }
}
