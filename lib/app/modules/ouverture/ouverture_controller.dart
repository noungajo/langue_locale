import 'package:get/get.dart';



class OuvertureController extends GetxController {
  static OuvertureController get find => Get.find();
 

  Future startTimer(int time) async {   
     await Future.delayed( Duration(microseconds: time~/10));
    await Future.delayed( Duration(milliseconds: time));
    Get.offAndToNamed("/home");
  }
}