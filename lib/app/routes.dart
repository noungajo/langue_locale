import 'package:get/get.dart';

import 'modules/ouverture.dart';

class AppRoutes {
  static const String initial = '/ouverture';
  static final routes = [
    GetPage(
      name: initial,
      page: () => Ouverture(),
    ),
  ];
}
