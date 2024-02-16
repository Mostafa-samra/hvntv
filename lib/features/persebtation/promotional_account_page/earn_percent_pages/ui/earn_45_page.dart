import 'package:flutter/material.dart';
import 'package:hvnt/features/persebtation/promotional_account_page/earn_percent_pages/widget/earn_day_widget.dart';

class Earn45Page extends StatelessWidget {
  const Earn45Page({super.key});
  static String id = "/earn45Page";

  @override
  Widget build(BuildContext context) {
    return const EarnDayWidget(
      title: "Amadeus Capital Partners Ltd.",
      img: "assets/images/amadeus_capital_partners_limited.jpg",
      imgSize: 15,
      day: 45,
      dayPercent: 3.68,
      percent: .26,
      textPercent: 26,
      headerText:
          "Buy Amadeus Capital Partners Ltd. products with a 45-day cycle and a total interest rate of 165.6%.For example, if you buy 1000 EGP, after 45 days, you can get 1000 * 165.6% + 1000 = 2656 (EGP)",
      redText: "The minimum purchase of this product is 500 EGP",
      noteText:
          "Note: After purchasing the product, you cannot withdraw money in advance, you can only wait until the end of the cycle to receive the principal and interest",
    );
  }
}
