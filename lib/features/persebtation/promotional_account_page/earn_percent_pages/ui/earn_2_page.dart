import 'package:flutter/material.dart';
import '../widget/earn_day_widget.dart';

class Earn2Page extends StatelessWidget {
  const Earn2Page({super.key});
  static String id = "/earn2Page";

  @override
  Widget build(BuildContext context) {
    return const EarnDayWidget(
      title: "HVNTV Newbie Gift Pack",
      img: "assets/images/logo-en-US.png",
      imgSize: 100,
      day: 2,
      dayPercent: 15,
      percent: .2,
      textPercent: 2,
      headerText:
          "Purchase the HVNTV newcomer welfare package, with a period of 2 days and a total interest rate of 30%. For example, if you buy 300 EGP, you will get 300 * 30% + 300 = 390 (EGP) 2 days later.",
      redText:
          "The fixed purchase amount of this benefit package is 300 EGP, and each member can only purchase it once.",
      noteText:
          "Note: After purchasing the product, you cannot withdraw money in advance. You only receive the principal and interest until the end of the period.",
    );
  }
}
