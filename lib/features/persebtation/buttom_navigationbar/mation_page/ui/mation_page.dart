import 'package:flutter/material.dart';

class MationPage extends StatelessWidget {
  const MationPage({super.key});
  static String id = '/mation';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Center(
      child: Text("Mation"),
    ));
  }
}
