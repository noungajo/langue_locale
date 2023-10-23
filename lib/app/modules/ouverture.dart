import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Ouverture extends StatelessWidget {
  Ouverture({super.key});
  final Storage storage = Storage();

  @override
  Widget build(BuildContext context) {
    controller.startAnimation();
    return Scaffold(
      body: Center(
        child: Lottie.asset(ouverture, height: loginImage),
      ),
    );
  }
}
