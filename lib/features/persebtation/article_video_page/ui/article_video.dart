import 'package:flutter/material.dart';

import '../../../../core/widget/icon_button_arrow_ios_widget.dart';

class SrticleVideo extends StatelessWidget {
  const SrticleVideo({super.key});
  static String id = '/srticleVideo';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButtonArrowBackIosWidget(),
                Spacer(),
                Text("مقدمة الفيديو"),
                Spacer()
              ],
            ),
            Text("ملف الشركة"),
            Text("كيفية التسجيل"),
            Text("تدفق المهام"),
            Text("كيفية دعوة المستخدمين"),
          ],
        ),
      ),
    );
  }
}
