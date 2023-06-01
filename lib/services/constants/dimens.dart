import 'package:flutter/material.dart';

class Dimens {
  BuildContext context;

  Dimens._(this.context);
  factory Dimens.of(BuildContext context) => Dimens._(context);

  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
}