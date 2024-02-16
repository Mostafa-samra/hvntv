import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant/text_constant.dart';
import '../../../../../domain/model/my_buttons_model.dart';

part 'mepage_state.dart';

class MepageCubit extends Cubit<MepageState> {
  MepageCubit() : super(MepageInitial());
  static MepageCubit get(context) => BlocProvider.of(context);

  final List<MyButttonsModel> myButtons = [
    MyButttonsModel(
        image: "assets/images/coin.png",
        text: kGold,
        arowOrNumber: kGoldNumber),
    MyButttonsModel(
        image: "assets/images/center_001.png",
        text: kPersonalInformation,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/record_list.png",
        text: kTaskLogs,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/center_003.png",
        text: kDailyStatement,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/center_009.png",
        text: kTeamReports,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/center_005.png",
        text: kCallTheTeam,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/center_012.png",
        text: kCreditCenter,
        arowOrNumber: kCreditCenterNumber),
    MyButttonsModel(
        image: "assets/images/center_004.png",
        text: kFinancialRecords,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/yuebao_icon.jpg",
        text: kPromotionalAccount,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/housekeeper_icon.png",
        text: kCloudButler,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/lucky_icon.png",
        text: kLuckyWheel,
        arowOrNumber: kArrow),
    MyButttonsModel(
        image: "assets/images/center_013.png",
        text: kAppDownload,
        arowOrNumber: kArrow),
  ];
}
