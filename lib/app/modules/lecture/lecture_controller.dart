import 'package:get/get.dart';

import 'lecture_modele.dart';

class LectureController extends GetxController{
  RxList<LectureModele> listeLecture = RxList<LectureModele>.empty();

  setCurrentListeLecture(List<LectureModele> listes){
    listeLecture(listes);
  }
 List<LectureModele> getCurrentListeLecture(){
   return listeLecture ;
  }
}