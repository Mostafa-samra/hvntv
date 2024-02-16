import 'package:flutter/material.dart';

class ChoseModel {
  final String img;
//  final AssetImage img;
  final String? text;
  final Function(BuildContext context) onTap;
  ChoseModel({
    required this.img,
    this.text,
    required this.onTap,
  });
}
