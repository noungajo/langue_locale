
import '../../lecture/lecture_modele.dart';

import '../../../../constants/app_constants.dart';

/*
0 -> "Fè'éfè'é"
1 -> "Douala"
2 -> "Bangangté"
3 -> "Yambassa"
4 ->  "Étón"
*/
int indexNufi = 0,indexDouala = 1, indexBangante = 2, indexYambassa = 3, indexEton = 4;
var listeLectureSalutation = [
   //LectureModele(text: "1_lonam", imageUrl: "${imageUrlBaseSalutation}2-matin_lonam.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}1-bonjour_grande_soeur_mbouani_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "2_lonam", imageUrl: "${imageUrlBaseSalutation}2-matin_lonam.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}2-bonjour_grande_soeur_mbouani_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "3_mbouani", imageUrl: "${imageUrlBaseSalutation}3-matin_mbouani.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}3-bonjour_mon_petit_frere_lonam_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "4_mbouani", imageUrl: "${imageUrlBaseSalutation}3-matin_mbouani.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}4-comment_ca_va_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "5_lonam", imageUrl: "${imageUrlBaseSalutation}4-matin_lonam_2.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}5-ca_va_bien_merci_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "6_lonam", imageUrl: "${imageUrlBaseSalutation}5-salut_papa_lonam.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}6-salut_papa_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "7_papa", imageUrl: "${imageUrlBaseSalutation}6-bonjour_mon_enfant.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}7-salut_mon_enfant_comment_ca_va_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "8_lonam", imageUrl: "${imageUrlBaseSalutation}5-salut_papa_lonam.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}8-ca_va_bien_papa_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "9_lonam", imageUrl: "${imageUrlBaseSalutation}5-salut_papa_lonam.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}9-et_toi_alors_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "10_papa", imageUrl: "${imageUrlBaseSalutation}6-bonjour_mon_enfant.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}10-ca_va_bien_mon_enfant_merci_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "11_mbouani", imageUrl: "${imageUrlBaseSalutation}12-bonsoir_mbouani.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}11-bonsoir_maman_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "12_maman", imageUrl: "${imageUrlBaseSalutation}13-la_mere.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}12-bonsoir_mon_enfant_comment_ca_va_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),

   LectureModele(text: "13_mbouani", imageUrl: "${imageUrlBaseSalutation}12-bonsoir_mbouani.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}113-ca_va_bien_maman_et_toi_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "14_maman", imageUrl: "${imageUrlBaseSalutation}13-la_mere.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}14-ca_va_bien_mon_enfant_merci_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "15_mbouani", imageUrl: "${imageUrlBaseSalutation}14-bonsoir_frere.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}15-bonne_nuit_mon_frere_lonam_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "16_lonam", imageUrl: "${imageUrlBaseSalutation}14-bonsoir_frere.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}16-bonne_nuit_ma_soeur_mbouani_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "17_enfants", imageUrl: "${imageUrlBaseSalutation}11-bonsoir_les_parents.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}17-bonne_nuit_papa_bonne_nuit_maman_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "18_parents", imageUrl: "${imageUrlBaseSalutation}11-bonsoir_les_parents.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}18-nous_vous_remercions_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
  LectureModele(text: "19_parents", imageUrl: "${imageUrlBaseSalutation}11-bonsoir_les_parents.png",audioMap: {languePrisEnCharge[indexNufi]:"${audioUrlBaseSalutation}19-bonne_nuit_a_vous_mes_enfants_demain_nufi.ogg",languePrisEnCharge[indexDouala]:"",languePrisEnCharge[indexBangante]:"",languePrisEnCharge[indexYambassa]:"",languePrisEnCharge[indexEton]:""}),
 
  ];
