import 'package:get/get.dart';
import 'package:nlp_one/app/internationalisation/i18_en_EN.dart';
import 'package:nlp_one/app/internationalisation/i18_fr_FR.dart';

class Internationalisation extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {'en_EN': i18En, 'fr_FR': i18Fr};
  }
}
