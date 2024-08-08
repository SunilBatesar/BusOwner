import 'package:bus_owner/Models/language_model.dart';
import 'package:bus_owner/Res/Apis/i18n/language_translations.dart';
import 'package:bus_owner/main.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  // LANGUAGE GET (SHARED PREFERENCE) AND SET IN LANGUAGE DATA
  LanguageController() {
    // CALL SET LANGUAGE DATA FUNCTION
    setLanguageData(prefe.getLanguagePrefe());
  }
  // LANGUAGE DATA
  final Rx<LanguageModel> _languageData = LanguageTranslations.english.obs;
  // GET LANGUAGE DATA
  LanguageModel get languageData => _languageData.value;
  // SET LANGUAGE
  setLanguageData(LanguageModel model) {
    _languageData.value = model;
    // SET LANGUAGE IN SHARED PREFERENCE
    prefe.setLanguagePrefe(model: model);
  }
}
