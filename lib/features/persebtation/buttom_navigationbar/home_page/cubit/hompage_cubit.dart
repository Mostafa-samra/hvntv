import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvnt/features/persebtation/promote_page/ui/promote_page.dart';

import '../../../../../constant/text_constant.dart';
import '../../../../../domain/model/chose_model.dart';
import '../../../../../domain/model/membership_list_model.dart';
import '../../../article_video_page/ui/article_video.dart';
import '../../../company_profile_page/ui/company_profile_page.dart';
import '../../../promotional_account_page/ui/promotional_account_page.dart';
import '../../../task_list_page/ui/task_list_page.dart';
import '../../my_wallet/ui/my_wallet_page.dart';

part 'hompage_state.dart';

class HompageCubit extends Cubit<HompageState> {
  HompageCubit() : super(HompageInitial());

  static HompageCubit get(context) => BlocProvider.of(context);

  List<ChoseModel> images = [
    ChoseModel(
      img: "assets/images/home_notice.png",
      onTap: (context) {},
    ),
  ];
  List<ChoseModel> item = [
    ChoseModel(
      img: "assets/images/home_gift.png",
      text: kPromotionBonuses,
      onTap: (context) {
        Navigator.pushNamed(context, PromotePage.id);
      },
    ),
    ChoseModel(
      img: "assets/images/home_vip.png",
      text: kVIPArea,
      onTap: (context) {
        Navigator.pushNamed(context, TaskListPage.id);
      },
    ),
    ChoseModel(
      img: "assets/images/home_company.png",
      text: kProfilePersonly,
      onTap: (context) {
        Navigator.pushNamed(context, CompanyProfilePage.id);
      },
    ),
    ChoseModel(
      img: "assets/images/home_video.png",
      text: kEducationalVideo,
      onTap: (context) {
        Navigator.pushNamed(context, SrticleVideo.id);
      },
    ),
    ChoseModel(
      img: "assets/images/yuebao_icon.jpg",
      text: kPromotionalAccount,
      onTap: (context) {
        Navigator.pushNamed(context, PromotionalAccountPage.id);
      },
    ),
    ChoseModel(
      img: "assets/images/coin.png",
      text: kMyWallet,
      onTap: (context) {
        Navigator.pushNamed(context, MyWalletPage.id);
      },
    ),
  ];

  List<ChoseModel> taskHall = [
    ChoseModel(
      img: "assets/images/head_1.png",
      text: kIntern,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_2.png",
      text: kK1,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_3.png",
      text: kK2,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_4.png",
      text: kK3,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_5.png",
      text: kK4,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_6.png",
      text: kK5,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_7.png",
      text: kK6,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_8.png",
      text: kK7,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_9.png",
      text: kK8,
      onTap: (context) {},
    ),
    ChoseModel(
      img: "assets/images/head_10.png",
      text: kK9,
      onTap: (context) {},
    ),
  ];

  List<MembershipListModel> memberShip = [
    MembershipListModel(
        image: "assets/images/vid.jpg",
        textMember: "2661***** تهانينا",
        textMation: "مكتمل 800 قائمة اليوم",
        textCost: "30EGP"),
    MembershipListModel(
        image: "assets/images/vid.jpg",
        textMember: "2661***** تهانينا",
        textMation: "مكتمل 800 قائمة اليوم",
        textCost: "30EGP"),
    MembershipListModel(
        image: "assets/images/vid.jpg",
        textMember: "2661***** تهانينا",
        textMation: "مكتمل 800 قائمة اليوم",
        textCost: "30EGP"),
  ];
}
