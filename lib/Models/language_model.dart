import 'dart:convert';

class LanguageModel {
  String languageName;
  String languageCode;
  String countryCode;
  String image;
  LanguageModel({
    required this.languageName,
    required this.languageCode,
    required this.countryCode,
    required this.image,
  });

  @override
  String toString() {
    return "${languageCode}_$countryCode";
  }

  String toJson() => jsonEncode({
        "languageName": languageName,
        "languageCode": languageCode,
        "countryCode": countryCode,
        "image": image,
      });

  factory LanguageModel.fromjson({required String json}) {
    Map<String, dynamic> data =
        json.isEmpty ? <String, dynamic>{} : jsonDecode(json);
    return LanguageModel(
        languageName: data["languageName"] ?? "English",
        languageCode: data["languageCode"] ?? "en",
        countryCode: data["countryCode"] ?? "US",
        image: data["image"] ?? "assets/icons/usFlag.png");
      
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LanguageModel &&
        other.languageName == languageName &&
        other.languageCode == languageCode &&
        other.countryCode == countryCode;
  }

  @override
  int get hashCode =>
      languageName.hashCode ^ languageCode.hashCode ^ countryCode.hashCode;
}
