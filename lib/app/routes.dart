import 'package:get/get.dart';
import 'package:reenamuna/app/modules/home/home_screen.dart';

import 'modules/dialogue/dialogue.dart';
import 'modules/lecture/lecture.dart';
import 'modules/ouverture/ouverture.dart';

class AppRoutes {
  static const String initial = '/ouverture';
  static final routes = [
    GetPage(
      name: initial,
      page: () => Ouverture(),
    ),
     GetPage(
      name: "/home",
      page: () => const HomeScreen(),
    ),
      GetPage(
      name: "/dialog",
      page: () => const Dialogue(),
    ),
      GetPage(
      name: "/lecture",
      page: () => const Lecture(),
    ),
  ];
}
