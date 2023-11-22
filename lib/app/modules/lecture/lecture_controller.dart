import 'package:get/get.dart';

import 'lecture_modele.dart';

class LectureController extends GetxController{
  RxList<LectureModele> listeLecture = RxList<LectureModele>.empty();
  RxInt currentObjet = 0.obs;
  RxString currentTitle = "".obs;
  bool makePop = false;
  setCurrentListeLecture(List<LectureModele> listes){
    listeLecture(listes);
    currentObjet = 0.obs;
  }
 List<LectureModele> getCurrentListeLecture(){
   return listeLecture ;
  }
  setCurrentTitle(String title){
    currentTitle.value = title;
  }
  RxString getCurrentTitle(){
    return currentTitle;
  }
  // fonction pour déterminer si on fait un popup ou un retour sur home
  setPop(bool value){
    makePop = value;
  }
  getPop(){
    return makePop;
  }

}
