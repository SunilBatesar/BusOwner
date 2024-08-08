import 'package:bus_owner/Models/language_model.dart';
import 'package:bus_owner/Res/Apis/i18n/language_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageTranslations extends Translations {
  // LANGUAGE SET IN MODEL
  static LanguageModel english = LanguageModel(
      languageName: "English", languageCode: "en", countryCode: "US");
  static LanguageModel hindi = LanguageModel(
      languageName: "Hindi", languageCode: "hi", countryCode: "IN");

  // LOCALE LANGUAGE
  static Locale locale = Locale(english.languageCode, english.countryCode);
  // FALL BACK LOCALE LANGUAGE
  static Locale fallbackLocale =
      Locale(english.languageCode, english.countryCode);

  // LANGUAGE LIST IN MODEL
  static final List<LanguageModel> languageList = [english, hindi];

  // SET KEYS
  @override
  Map<String, Map<String, String>> get keys => {
        english.toString(): LanguageType.english,
        hindi.toString(): LanguageType.hindi,
      };
}
