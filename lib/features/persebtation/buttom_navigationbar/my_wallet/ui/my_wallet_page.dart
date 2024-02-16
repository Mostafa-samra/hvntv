import 'package:flutter/material.dart';
import '../../../../../core/widget/icon_button_arrow_ios_widget.dart';
import '../../../promotional_account_page/purchase_records_page/ui/purchase_records_page.dart';

class MyWalletPage extends StatelessWidget {
  const MyWalletPage({super.key});
  static String id = "/myWalletPage";
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
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الرصيد"),
              Text("1113.5 EGP"),
            ],
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => const WalletCharge(),
            itemCount: 4,
          )
        ],
      ),
    );
  }
}

class WalletCharge extends StatelessWidget {
  const WalletCharge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
          color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(20)),
      child: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/wap.png"),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Saxpay"),
                  Text(
                      "الحد الادنى للمبلغ الواحد هو 200.00EGP , اقصى مبلغ 30000.00 EGP, رسوم المعالجة 0.00%"),
                ],
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
