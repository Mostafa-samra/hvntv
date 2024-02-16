import 'package:flutter/material.dart';
import 'package:hvnt/features/persebtation/promote_page/ui/promote_page.dart';
import 'features/persebtation/article_video_page/ui/article_video.dart';
import 'features/persebtation/buttom_navigationbar/home_page/ui/home_page.dart';
import 'features/persebtation/buttom_navigationbar/my_wallet/ui/my_wallet_page.dart';
import 'features/persebtation/company_profile_page/ui/company_profile_page.dart';
import 'features/persebtation/buttom_navigationbar/earn_page/ui/earn_page.dart';
import 'features/persebtation/buttom_navigationbar/mation_page/ui/mation_page.dart';
import 'features/persebtation/buttom_navigationbar/me_page/ui/me_page.dart';
import 'features/persebtation/promotional_account_page/earn_percent_pages/ui/earn_100_page.dart';
import 'features/persebtation/promotional_account_page/earn_percent_pages/ui/earn_2_page.dart';
import 'features/persebtation/promotional_account_page/earn_percent_pages/ui/earn_7_page.dart';
import 'features/persebtation/promotional_account_page/purchase_records_page/ui/purchase_records_page.dart';
import 'features/persebtation/promotional_account_page/earn_percent_pages/ui/earn_15_page.dart';
import 'features/persebtation/promotional_account_page/earn_percent_pages/ui/earn_27_page.dart';
import 'features/persebtation/promotional_account_page/earn_percent_pages/ui/earn_45_page.dart';
import 'features/persebtation/promotional_account_page/ui/promotional_account_page.dart';
import 'features/persebtation/task_list_page/ui/task_list_page.dart';
import 'features/persebtation/buttom_navigationbar/vip_page/ui/vip_page.dart';

// معالجة الروابط غير المعروفة
///  '*': (context) => const NotFoundPage(),
Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  HomePage.id: (context) => const HomePage(),
  VipPage.id: (context) => const VipPage(),
  EarnPage.id: (context) => const EarnPage(),
  MationPage.id: (context) => const MationPage(),
  MePage.id: (context) => const MePage(),
  PromotePage.id: (context) => const PromotePage(),
  CompanyProfilePage.id: (context) => const CompanyProfilePage(),
  TaskListPage.id: (context) => const TaskListPage(),
  SrticleVideo.id: (context) => const SrticleVideo(),
  PromotionalAccountPage.id: (context) => PromotionalAccountPage(),
  Earn27Page.id: (context) => const Earn27Page(),
  Earn45Page.id: (context) => const Earn45Page(),
  Earn15Page.id: (context) => const Earn15Page(),
  Earn7Page.id: (context) => const Earn7Page(),
  Earn2Page.id: (context) => const Earn2Page(),
  Earn100Page.id: (context) => const Earn100Page(),
  PurchaseRecordsPage.id: (context) => const PurchaseRecordsPage(),
  MyWalletPage.id: (context) => const MyWalletPage(),
};
