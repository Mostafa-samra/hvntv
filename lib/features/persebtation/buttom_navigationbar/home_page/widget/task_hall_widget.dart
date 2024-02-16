import 'package:flutter/material.dart';
import '../../../../../domain/model/chose_model.dart';

class TaskHallWidget extends StatelessWidget {
  const TaskHallWidget({
    super.key,
    required this.choseModel,
  });
  final ChoseModel choseModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          choseModel.img.toString(),
          height: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(choseModel.text.toString())
      ],
    );
  }
}
