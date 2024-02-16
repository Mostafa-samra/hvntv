import 'package:flutter/material.dart';

import '../../../domain/model/my_buttons_model.dart';

class RowButtonWitheText extends StatelessWidget {
  const RowButtonWitheText({
    super.key,
    required this.myButttonsModel,
  });

  final MyButttonsModel myButttonsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Image.asset(
            myButttonsModel.image,
            height: 30,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(child: Text(myButttonsModel.text)),
          Text(myButttonsModel.arowOrNumber),
        ],
      ),
    );
  }
}
