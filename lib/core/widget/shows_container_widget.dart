import 'package:flutter/material.dart';

import '../../constant/color_constant.dart';
import '../../domain/model/chose_model.dart';

class ShowsContainerWidget extends StatelessWidget {
  const ShowsContainerWidget(
      {super.key,
      required this.choseModel,
      required this.height,
      required this.heightContainer});
  final ChoseModel choseModel;
  final double height;
  final double heightContainer;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: choseModel.onTap != null ? () => choseModel.onTap(context) : null,
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        height: heightContainer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: kBackGroundOpacity,
        ),
        child: Row(
          ///      mainAxisAlignment: MainAxisAlignment.,
          //  mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: height,
              child: Image.asset(
                choseModel.img.toString() ?? "",
                // height: 50,
                // width: 100,
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 3,
              child: Text(
                choseModel.text?.toString() ?? "",
                // maxLines: 2,
                //  overflow: TextOverflow.ellipsis,
                //   softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
