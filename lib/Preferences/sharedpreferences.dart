import 'package:bus_owner/Models/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefe {
  SharedPrefe._constructor();
  static get instance => SharedPrefe._constructor();

  static late SharedPreferences _preferences;
  getpref() async {
    _preferences = await SharedPreferences.getInstance();
  }

// From Main Branch

  //  ALL PREFERENCES KEYS
  static get languageKey => "languageKey";

  // LANGUAGE PREFERENCES
  setLanguagePrefe({required LanguageModel model}) {
    _preferences.setString(languageKey, model.toJson());
  }

  getLanguagePrefe() {
    return LanguageModel.fromjson(
        json: _preferences.getString(languageKey) ?? "");
  }
}
