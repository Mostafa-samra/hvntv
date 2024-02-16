import 'package:flutter/material.dart';
import 'package:hvnt/features/persebtation/promotional_account_page/earn_percent_pages/widget/earn_day_widget.dart';

class Earn27Page extends StatelessWidget {
  const Earn27Page({super.key});
  static String id = "/earn27Page";
  @override
  Widget build(BuildContext context) {
    return const EarnDayWidget(
      title: "HVNTV Anniversary Benefits",
      img: "assets/images/logo-en-US.png",
      imgSize: 100,
      day: 7,
      dayPercent: 7,
      percent: .27,
      textPercent: 27,
      headerText:
          "Purchase the HVNTV Anniversary Benefits package, the cycle is 7 days, and the total interest rate is 49%.For example, if you buy 50000 EGP, after 7 days, you can get 50000 * 49% + 50000 = 74500 (EGP)",
      redText: "The minimum purchase amount of this product is 50000 EGP.",
      noteText:
          "Note: After purchasing the product, you cannot withdraw money in advance. You can only receive the principal and interest until the end of the cycle.",
    );
  }
}
