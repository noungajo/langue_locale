import 'package:get/get.dart';

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
      page: () => Ouverture(),
    ),
      GetPage(
      name: "/parametre",
      page: () => Ouverture(),
    ),
      GetPage(
      name: "/dialog",
      page: () => Ouverture(),
    ),
      GetPage(
      name: "/player",
      page: () => Ouverture(),
    ),
  ];
}
