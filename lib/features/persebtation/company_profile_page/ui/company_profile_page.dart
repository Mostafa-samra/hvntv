import 'package:flutter/material.dart';

import '../../../../constant/text_constant.dart';
import '../../../../core/widget/icon_button_arrow_ios_widget.dart';

class CompanyProfilePage extends StatelessWidget {
  const CompanyProfilePage({super.key});
  static String id = "/companyProfilePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(kProfilePersonly),
        leading: const IconButtonArrowBackIosWidget(),
      ),
      body: ListView(children: [
        Image.asset("assets/images/202310041320496501743328.png"),
        const Text(
          "مع أكثر من 3000 موظف في 36 موقعًا في الولايات المتحدة وأوروبا وآسيا والمحيط الهادئ، تتمتع الشركة بإمكانية الوصول والموارد التي تتمتع بها منظمة عالمية مع تعزيز ثقافة الابتكار وخفة الحركة التي تمكن موظفيها من الاستجابة لاحتياجات العملاء المتغيرة.وفي الوقت نفسه، خلال السنوات الخمس التي انقضت منذ أن ضرب العالم وباء كوفيد-19، ساعدنا أيضًا ملايين الأشخاص حول العالم على حل مشكلاتهم المتعلقة بالعمل والدخل. في الآونة الأخيرة، نظرًا لارتفاع معدل البطالة، ومن أجل إكمال أعمال التوظيف بشكل أسرع وتحقيق إدارة أفضل للموظفين، سوف نستثمر المزيد من الأموال والميزانيات لابتكار نماذج حتى يتمكن كل موظف من المشاركة في أعمال التوظيف والإدارة، والحصول على دخل أكبر في المقابل. في نفس الوقت! هذه فرصة تطوير نادرة. إذا كانت لديك القدرة والشغف وترغب في اكتساب الثروة والحرية بشكل أسرع، انضم إلينا! كلما انضممت مبكرًا، زادت فرصك في الترقية!",
        ),
        const Text("Office address："),
        const Text(
          '''https://maps.app.goo.gl/86vof6BcJy7u1F2a9

Elmawkf elgadid St ezbet elmorbaa -benha - quliobya-Egypt zip code 13637



https://www.google.com/maps?q=31.1168961,32.249945&z=17&hl=en

Al Ganoub, Port Said Governorate 8523539, Egypt



https://maps.app.goo.gl/Q2775sCWkfCZ7Df67

Sahrajt Al Kubra, Sahragt as Sughra WA Kafr Gerges Youssef, Mit Ghamr, Egypt



https://goo.gl/maps/zef4sJXmhStzkbgd8

Alexandria Bank Extension, 55 Ibrahim Khalil St., Quesna, Menoufia, Arab Republic of Egypt. There are also Al-Tawheed and Al-Nour stores



https://maps.app.goo.gl/Q2775sCWkfCZ7Df67

Sahragt as Sughra WA Kafr Gerges Youssef Mit Ghamr



https://maps.app.goo.gl/ELCvzQyKLiVhz1w17

Cairo location, Ain Shams El Sharkia, Ahmed Essmat Street, in front of Vodafone branch''',
        ),
        Image.asset("assets/images/1699620151906042.png"),
      ]),
    );
  }
}
