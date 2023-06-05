import 'package:flutter/material.dart';

class CustomTabBarWidget extends StatefulWidget {
  final void Function()? onPressed;
  final Color color;
  final String text;
  final TextStyle style;
  final Widget widget;

   const CustomTabBarWidget({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.text,
    required this.style,
    required this.widget,
  }) : super(key: key);

  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed:
            widget.onPressed,
          style: TextButton.styleFrom(
            backgroundColor: widget.color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minimumSize: const Size(50, 50),
          ),
          child: widget.widget,
        ),
        const SizedBox(height: 5),
        Text(
          widget.text,
          style: widget.style,
        ),
      ],
    );
  }
}
