import 'package:flutter/material.dart';
import '../widget/earn_day_widget.dart';

class Earn100Page extends StatelessWidget {
  const Earn100Page({super.key});
  static String id = "/earn100Page";

  @override
  Widget build(BuildContext context) {
    return const EarnDayWidget(
      title: "EFG Asset Management (UK) Ltd",
      img: "assets/images/efg_asset_management.png",
      imgSize: 30,
      day: 100,
      dayPercent: 2.53,
      percent: .54,
      textPercent: 54,
      headerText:
          "Buy EFG Asset Management (UK) Ltd products for a period of 100 days with a total interest rate of 253%. For example, if you buy 10000 EGP, after 100 days, you can get 10000 * 253% + 10000 = 35300 (EGP)",
      redText: "The minimum purchase of this product is 500 EGP",
      noteText:
          "Note: After purchasing the product, you cannot withdraw money in advance, you can only wait until the end of the cycle to receive the principal and interest",
    );
  }
}
