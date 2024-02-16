import 'package:flutter/material.dart';
import '../../../../domain/model/promotional_account_button_model.dart';
import '../../../../core/widget/icon_button_arrow_ios_widget.dart';
import '../../widget/promotinal_account_button_widget.dart';
import '../earn_percent_pages/ui/earn_100_page.dart';
import '../earn_percent_pages/ui/earn_2_page.dart';
import '../purchase_records_page/ui/purchase_records_page.dart';
import '../earn_percent_pages/ui/earn_15_page.dart';
import '../earn_percent_pages/ui/earn_45_page.dart';

class PromotionalAccountPage extends StatelessWidget {
  PromotionalAccountPage({super.key});
  static String id = '/promotionalAccountPage';
  final List<PromotionalAccountButtonModel> promotionAccountButton = [
    //1
    PromotionalAccountButtonModel(
        img: "assets/images/amadeus_capital_partners_limited.jpg",
        imgSize: 15,
        headerText: "Amadeus Capital Partners Ltd.",
        day: 45,
        dayPercent: 3.68,
        percent: .26,
        textPercent: 26,
        onTap: (context) {
          Navigator.pushNamed(context, Earn45Page.id);
        }),
    //2
    PromotionalAccountButtonModel(
        img: "assets/images/barclays.jpg",
        imgSize: 15,
        headerText: "Barclays Capital",
        day: 15,
        dayPercent: 3.3,
        percent: .86,
        textPercent: 86,
        onTap: (context) {
          Navigator.pushNamed(context, Earn15Page.id);
        }),
    //3
    PromotionalAccountButtonModel(
        img: "assets/images/mmc.gif",
        imgSize: 100,
        headerText: "MMC Ventures",
        day: 7,
        dayPercent: 2.5,
        percent: .86,
        textPercent: 86,
        onTap: (context) {
          Navigator.pushNamed(context, Earn15Page.id);
        }),
    //4
    PromotionalAccountButtonModel(
        img: "assets/images/logo-en-US.png",
        imgSize: 100,
        headerText: "HVNTV Newbie Gift Pack",
        day: 2,
        dayPercent: 15,
        percent: .2,
        textPercent: 2,
        onTap: (context) {
          Navigator.pushNamed(context, Earn2Page.id);
        }),

    //5
    PromotionalAccountButtonModel(
        img: "assets/images/efg_asset_management.png",
        imgSize: 30,
        headerText: "EFG Asset Management (UK) Ltd",
        day: 100,
        dayPercent: 2.53,
        percent: .54,
        textPercent: 54,
        onTap: (context) {
          Navigator.pushNamed(context, Earn100Page.id);
        }),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButtonArrowBackIosWidget(),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(127, 227, 242, 253),
        title: const Text(
          "Promotional account",
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, PurchaseRecordsPage.id);
              },
              child: const Text("السجلات"))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        shrinkWrap: true,
        children: [
          Image.asset("assets/images/yue_bg.png"),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text("مقدار"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 9),
            child: Text(
              "0",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text("فترة التخزين"),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => PromotionalAccountButtonWidget(
                promotionalAccountButtomModel: promotionAccountButton[index]),
            itemCount: promotionAccountButton.length,
          ),
        ],
      ),
    );
  }
}
