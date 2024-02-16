import 'package:flutter/material.dart';
import 'package:hvnt/domain/model/promotional_earn_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PromotionalEarnWidget extends StatelessWidget {
  const PromotionalEarnWidget({super.key, required this.promotionalEarnModel});
  final PromotionalEarnModel promotionalEarnModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          promotionalEarnModel.img,
          height: promotionalEarnModel.imgSize,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(promotionalEarnModel.headerText),
              ),
              Text("${promotionalEarnModel.day} يوم"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("ربح %${promotionalEarnModel.dayPercent}"),
              ),
              CircularPercentIndicator(
                radius: 30.0,
                lineWidth: 5.0, reverse: true, restartAnimation: true,
                // animation: true,
                percent: promotionalEarnModel.percent,
                center: Text(
                  "${promotionalEarnModel.textPercent}%",
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
    );
  }
}
