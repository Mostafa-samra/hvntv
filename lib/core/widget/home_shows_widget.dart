import 'package:flutter/material.dart';
import '../../constant/color_constant.dart';
import '../../constant/text_constant.dart';

class HomeShowsWidget extends StatelessWidget {
  const HomeShowsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(children: [
        Image.asset(
          "assets/images/vid.jpg",
          height: 200,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: 5,
            left: 5,
            child: Container(
              color: kBackGround1,
              child: const Text(kK1),
            )),
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.06,
              color: kBackGroundOpacity,
              child: const Expanded(
                child: SizedBox(
                  // width: 243,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.play_circle_outline_rounded),
                      Text(k1Level)
                    ],
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}
