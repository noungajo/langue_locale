import 'package:get/get.dart';

import 'i18_en_EN.dart';
import 'i18_fr_FR.dart';

class Internationalisation extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {'en_EN': i18En, 'fr_FR': i18Fr};
  }
}
