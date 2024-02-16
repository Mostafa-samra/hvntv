import 'package:flutter/material.dart';
import '../widget/earn_day_widget.dart';

class Earn7Page extends StatelessWidget {
  const Earn7Page({super.key});
  static String id = "/earn7Page";

  @override
  Widget build(BuildContext context) {
    return const EarnDayWidget(
      title: "MMC Ventures",
      img: "assets/images/mmc.gif",
      imgSize: 100,
      day: 7,
      dayPercent: 2.5,
      percent: .86,
      textPercent: 86,
      headerText:
          "Buy MMC Ventures products with a 7-day cycle and a total interest rate of 17.5%.For example, if you buy 1000 EGP, after 7 days, you can get 1000 * 17.5% + 1000 = 1175 (EGP)",
      redText: "The minimum purchase of this product is 500 EGP",
      noteText:
          "Note: After purchasing the product, you cannot withdraw money in advance, you can only wait until the end of the cycle to receive the principal and interest",
    );
  }
}
