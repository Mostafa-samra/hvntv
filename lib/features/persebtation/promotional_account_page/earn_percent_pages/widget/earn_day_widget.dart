import 'package:flutter/material.dart';

import '../../../../../core/widget/icon_button_arrow_ios_widget.dart';
import '../../../../../domain/model/promotional_earn_model.dart';
import '../../../widget/promotional_earn_widget.dart';

class EarnDayWidget extends StatelessWidget {
  const EarnDayWidget({
    super.key,
    required this.title,
    required this.img,
    required this.imgSize,
    required this.day,
    required this.dayPercent,
    required this.percent,
    required this.textPercent,
    required this.headerText,
    required this.redText,
    required this.noteText,
  });

  final String title;
  final String img;
  final double imgSize;

  final int day;
  final num dayPercent;
  final double percent;
  final int textPercent;
  final String headerText;
  final String redText;
  final String noteText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              children: [
                const IconButtonArrowBackIosWidget(),
                const Spacer(),
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            PromotionalEarnWidget(
              promotionalEarnModel: PromotionalEarnModel(
                img: img,
                imgSize: imgSize,
                headerText: title,
                day: day,
                dayPercent: dayPercent,
                percent: percent,
                textPercent: textPercent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headerText,
                  ),
                  Text(
                    redText,
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Text(noteText),
                ],
              ),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: const InputDecoration(
                                  labelText: "قيمة الإيداع",
                                  suffixText: "الرجاء إدخال مبلغ الإيداع"),
                            ),
                          ),
                          Text(
                            "EGP",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          " 0.00 egp ربح ",
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                      ),
                      onPressed: () {},
                      child: const Text("data"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
