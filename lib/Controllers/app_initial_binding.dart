import 'package:bus_owner/Controllers/auth_controller.dart';
import 'package:bus_owner/Controllers/language_controller.dart';
import 'package:get/get.dart';

class AppInitialbinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LanguageController());
    Get.put(AuthController());
  }
}
