import 'package:flutter/material.dart';
import '../widget/earn_day_widget.dart';

class Earn15Page extends StatelessWidget {
  const Earn15Page({super.key});
  static String id = "/earn15Page";

  @override
  Widget build(BuildContext context) {
    return const EarnDayWidget(
      title: "Barclays Capital",
      img: "assets/images/barclays.jpg",
      imgSize: 15,
      day: 15,
      dayPercent: 3.3,
      percent: .86,
      textPercent: 86,
      headerText:
          "Buy Barclays capital products with a 15-day cycle and a total interest rate of 49.5%.For example, if you buy 1000EGP, after 15 days, you can get 1000 * 49.5% + 1000 = 1495 (EGP)",
      redText: "The minimum purchase of this product is 1000 EGP",
      noteText:
          "Note: After purchasing the product, you cannot withdraw money in advance, you can only wait until the end of the cycle to receive the principal and interest",
    );
  }
}
