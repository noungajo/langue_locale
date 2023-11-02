import 'package:get/get.dart';

import 'i18_en.dart';
import 'i18_fr.dart';

class Internationalisation extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {'en_EN': i18En, 'fr_FR': i18Fr};
  }
}
