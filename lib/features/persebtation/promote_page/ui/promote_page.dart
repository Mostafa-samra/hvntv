import 'package:flutter/material.dart';

import '../../../../constant/color_constant.dart';
import '../../../../constant/text_constant.dart';
import '../../../../core/widget/icon_button_arrow_ios_widget.dart';

class PromotePage extends StatelessWidget {
  const PromotePage({super.key});
  static String id = "/PromotePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGround,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const IconButtonArrowBackIosWidget(),
            Expanded(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  // height: double.infinity / 4,
                  // width: double.infinity / 4,
                  decoration: BoxDecoration(
                      color: kTextColor1,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            kYourBestFriend,
                            style: TextStyle(color: Colors.amber),
                          ),
                          Text(
                            "01069415696",
                            style: TextStyle(color: Colors.amber),
                          )
                        ],
                      ),
                      const Text(
                        kInviteYouToJoinHVNTV,
                        style: TextStyle(color: Colors.amber),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kBackGroundBox),
                        child: Image.asset("assets/images/qr.png"),
                      ),
                      const Text(
                        "0106778",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Text("https://hvnegypt-tv.com/#/register/0106778",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      const Spacer()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
