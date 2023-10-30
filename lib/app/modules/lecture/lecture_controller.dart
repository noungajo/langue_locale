import 'package:get/get.dart';

import 'lecture_modele.dart';

class LectureController extends GetxController{
  List<LectureModele> listeLecture = [];

  setCurrentListeLecture(List<LectureModele> listes){
    listeLecture = listes;
  }
 List<LectureModele> getCurrentListeLecture(){
   return listeLecture ;
  }
}