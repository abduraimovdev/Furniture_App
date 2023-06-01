import 'package:flutter/material.dart';

enum AppColors {
  c303030("0xFF303030", Color(0xFF303030)),
  c909090("0xFF909090", Color(0xFF909090)),
  c606060("0xFF606060", Color(0xFF606060)),
  cB4916C("0xFFB4916C", Color(0xFFB4916C)),
  cE4CBAD("0xFFE4CBAD", Color(0xFFE4CBAD)),
  cE0E0E0("0xFFE0E0E0", Color(0xFFE0E0E0)),
  c808080("0xFF808080", Color(0xFF808080)),
  cB2B2B2("0xFFB2B2B2", Color(0xFFB2B2B2)),
  cBDBDBD("0xFFBDBDBD", Color(0xFFBDBDBD)),
  cF2994A("0xFFF2994A", Color(0xFFF2994A)),
  cEB5757("0xFFEB5757", Color(0xFFEB5757)),
  cF0F0F0("0xFFF0F0F0", Color(0xFFF0F0F0)),
  cF9F9F9("0xFFF9F9F9", Color(0xFFF9F9F9)),
  c27AE60("0xFF27AE60", Color(0xFF27AE60)),
  cFFFFFF("0xFFFFFFFF", Color(0xFFFFFFFF)),
  c212121("0xFF212121", Color(0xFF212121)),
  cF2C94C("0xFFF2C94C", Color(0xFFF2C94C));

  const AppColors(this.title, this.color);
  final String title;
  final Color color;
}