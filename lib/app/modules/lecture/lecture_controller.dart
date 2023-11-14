import 'package:get/get.dart';

import 'lecture_modele.dart';

class LectureController extends GetxController{
  RxList<LectureModele> listeLecture = RxList<LectureModele>.empty();
  bool makePop = false;
  setCurrentListeLecture(List<LectureModele> listes){
    listeLecture(listes);
  }
 List<LectureModele> getCurrentListeLecture(){
   return listeLecture ;
  }
  // fonction pour déterminer si on fait un popup ou un retour sur home
  setPop(bool value){
    makePop = value;
  }
  getPop(){
    return makePop;
  }

}
