import 'package:flutter/material.dart';

import '../../../../../core/widget/icon_button_arrow_ios_widget.dart';

class PurchaseRecordsPage extends StatelessWidget {
  const PurchaseRecordsPage({super.key});
  static String id = "/purchaseRecordsPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Purchase records"),
        centerTitle: true,
        leading: const IconButtonArrowBackIosWidget(),
        elevation: 0,
        backgroundColor: const Color.fromARGB(127, 227, 242, 253),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Column(
          children: [
            Text("ربح:90.00"),
            Text("مقدار:300"),
            Text("وقت الشراء:2024-01-28 20:44:19"),
            Text("HVNTV Newbie Gift Packحالة:(Over)"),
          ],
        ),
      ),
    );
  }
}
