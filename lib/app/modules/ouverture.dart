import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Ouverture extends StatelessWidget {
  const Ouverture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("ouverture", height: 10),
      ),
    );
  }
}
