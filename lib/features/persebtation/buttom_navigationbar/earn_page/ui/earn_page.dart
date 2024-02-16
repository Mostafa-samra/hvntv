import 'package:flutter/material.dart';

class EarnPage extends StatelessWidget {
  const EarnPage({super.key});
  static String id = '/earn';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Image.asset(
          "assets/images/202309271436035934001802.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
