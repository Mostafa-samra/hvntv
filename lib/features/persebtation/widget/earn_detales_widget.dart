import 'package:flutter/material.dart';

import '../../../constant/color_constant.dart';
import '../../../constant/text_constant.dart';

class EarnDetalesWidget extends StatelessWidget {
  const EarnDetalesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kBackGround2),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(ktext3),
          Text("0.00"),
        ],
      ),
    );
  }
}
