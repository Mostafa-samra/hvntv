import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constant/text_constant.dart';
import 'me_page/ui/me_page.dart';
import 'mation_page/ui/mation_page.dart';
import 'earn_page/ui/earn_page.dart';
import 'vip_page/ui/vip_page.dart';
import 'home_page/ui/home_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavigationBarPage> {
  int currentPageIndex = 0;
  List<Widget> body = <Widget>[
    const HomePage(),
    const VipPage(),
    const EarnPage(),
    const MationPage(),
    const MePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          /*    onTap: (value) {
            switch (value) {
              case 1:
                Navigator.pushNamed(context, VipPage.id);
                break;
              case 2:
                Navigator.pushNamed(context, EarnPage.id);
                break;
              case 3:
                Navigator.pushNamed(context, MationPage.id);
                break;
              case 4:
                Navigator.pushNamed(context, MePage.id);
                break;
              default:
                break;
            }
          }, */
          onTap: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          currentIndex: currentPageIndex,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: kHome, icon: Icon(CupertinoIcons.house_alt)),
            BottomNavigationBarItem(label: kVIP, icon: Icon(Icons.diversity_3)),
            BottomNavigationBarItem(label: kEarn, icon: Icon(Icons.diamond)),
            BottomNavigationBarItem(
                label: kMation, icon: Icon(Icons.add_task_outlined)),
            BottomNavigationBarItem(label: kMe, icon: Icon(Icons.person)),
          ]),
      //   body: Container(),
      body: body[currentPageIndex],
    );
  }
}
