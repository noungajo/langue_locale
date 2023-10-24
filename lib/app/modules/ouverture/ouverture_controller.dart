import 'package:get/get.dart';

import '../home/home_screen.dart';


class OuvertureController extends GetxController {
  static OuvertureController get find => Get.find();
 

  Future startTimer(int time) async {
    await Future.delayed( Duration(microseconds: time));
    Get.offAll(() => const HomeScreen());
  }
}