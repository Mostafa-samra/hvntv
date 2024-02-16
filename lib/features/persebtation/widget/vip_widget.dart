import 'package:flutter/material.dart';
import 'package:hvnt/constant/color_constant.dart';
import 'package:hvnt/domain/model/vip_model.dart';
import '../../../constant/text_constant.dart';

class VipWidget extends StatelessWidget {
  const VipWidget({
    super.key,
    required this.vipModel,
  });
  final VipModel vipModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kBackGround1, borderRadius: BorderRadius.circular(5.0)),
        child: Column(
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  vipModel.identity,
                  style: const TextStyle(color: kTextColor2),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Image.asset(
                      vipModel.image,
                      height: 50,
                    ),
                    Text(vipModel.level),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    const Text(ktext1),
                    Text(
                      vipModel.priceUnit,
                      style: const TextStyle(color: kTextColor1),
                    ),
                    const Text(ktext2),
                    Text(
                      vipModel.cost,
                      style: const TextStyle(color: kTextColor1),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    vipModel.cost,
                    style: const TextStyle(color: kTextColor2),
                  )),
                  vipModel.button
                      ? ElevatedButton(
                          onPressed: () {}, child: Text(vipModel.textButton))
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
