import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../domain/model/promotional_account_button_model.dart';

class PromotionalAccountButtonWidget extends StatelessWidget {
  const PromotionalAccountButtonWidget({
    super.key,
    required this.promotionalAccountButtomModel,
  });
  final PromotionalAccountButtonModel promotionalAccountButtomModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: promotionalAccountButtomModel.onTap != null
          ? () => promotionalAccountButtomModel.onTap(context)
          : null,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Image.asset(
              promotionalAccountButtomModel.img,
              height: promotionalAccountButtomModel.imgSize,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(promotionalAccountButtomModel.headerText),
                  ),
                  Text("${promotionalAccountButtomModel.day} يوم"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                        "ربح %${promotionalAccountButtomModel.dayPercent}"),
                  ),
                  CircularPercentIndicator(
                    radius: 30.0,
                    lineWidth: 5.0, reverse: true, restartAnimation: true,
                    // animation: true,
                    percent: promotionalAccountButtomModel.percent,
                    center: Text(
                      "${promotionalAccountButtomModel.textPercent}%",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.blue[300],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
