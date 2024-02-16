import 'package:flutter/material.dart';

class IconButtonArrowBackIosWidget extends StatelessWidget {
  const IconButtonArrowBackIosWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }
}
