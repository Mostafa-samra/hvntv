import 'package:flutter/material.dart';

class PromotionalAccountButtonModel {
  final String img;
  final double imgSize;
  final String headerText;
  final int day;
  final num dayPercent;
  final double percent;
  final int textPercent;
  final Function(BuildContext context) onTap;

  PromotionalAccountButtonModel({
    required this.img,
    required this.imgSize,
    required this.headerText,
    required this.day,
    required this.dayPercent,
    required this.percent,
    required this.textPercent,
    required this.onTap,
  });
}
