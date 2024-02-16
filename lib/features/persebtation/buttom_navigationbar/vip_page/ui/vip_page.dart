import 'package:flutter/material.dart';
import 'package:hvnt/constant/text_constant.dart';
import 'package:hvnt/domain/model/vip_model.dart';
import '../../../widget/vip_widget.dart';

class VipPage extends StatefulWidget {
  const VipPage({super.key});
  static String id = '/vip';
  @override
  State<VipPage> createState() => _VipPageState();
}

class _VipPageState extends State<VipPage> {
  List<VipModel> vipModel = [
    VipModel(
        image: "assets/images/head_1.png",
        level: kIntern,
        priceUnit: kpriceUnit6,
        dailyTasks: kDailyTasksNumber5,
        cost: kcost0,
        textButton: "",
        identity: "",
        button: false),
    VipModel(
        image: "assets/images/head_2.png",
        level: kK1,
        priceUnit: kpriceUnit6,
        dailyTasks: kDailyTasksNumber5,
        cost: kcost900,
        textButton: kInstantRenewal,
        identity: kYourIdentity,
        button: true),
    VipModel(
        image: "assets/images/head_3.png",
        level: kK3,
        priceUnit: kPriceUnit7,
        dailyTasks: kDailyTasks10,
        cost: kCost2100,
        textButton: kJoinNow,
        identity: "",
        button: true),
    VipModel(
        image: "assets/images/head_4.png",
        level: kK4,
        priceUnit: "EGP10.00",
        dailyTasks: "50",
        cost: "14000.00",
        textButton: kJoinNow,
        identity: "",
        button: true),
    VipModel(
        image: "assets/images/head_5.png",
        level: kK5,
        priceUnit: "EGP12.00",
        dailyTasks: "100",
        cost: "31200.00",
        textButton: kJoinNow,
        identity: "",
        button: true),
    VipModel(
        image: "assets/images/head_6.png",
        level: kK6,
        priceUnit: "EGP13.00",
        dailyTasks: "200",
        cost: "67600.00",
        textButton: kJoinNow,
        identity: "",
        button: true),
    VipModel(
        image: "assets/images/head_7.png",
        level: kK7,
        priceUnit: "EGP20.00",
        dailyTasks: "400",
        cost: "192000.00",
        textButton: kJoinNow,
        identity: "",
        button: true),
    VipModel(
        image: "assets/images/head_8.png",
        level: kK8,
        priceUnit: "EGP25.00",
        dailyTasks: "675",
        cost: "405000.00",
        textButton: kJoinNow,
        identity: "",
        button: true),
    VipModel(
        image: "assets/images/head_9.png",
        level: kK9,
        priceUnit: "EGP50.00",
        dailyTasks: "800",
        cost: "800000.00",
        textButton: kJoinNow,
        identity: "",
        button: true),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
          itemBuilder: (context, index) => VipWidget(vipModel: vipModel[index]),
          separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
          itemCount: vipModel.length),
    );
  }
}
