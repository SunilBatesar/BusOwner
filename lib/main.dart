import 'package:bus_owner/Classes/constant_sheet.dart';
import 'package:bus_owner/Controllers/app_initial_binding.dart';
import 'package:bus_owner/Preferences/sharedpreferences.dart';
import 'package:bus_owner/Res/Apis/i18n/language_translations.dart';
import 'package:bus_owner/Services/appconfig.dart';
import 'package:bus_owner/Utils/Routes/app_routes.dart';
import 'package:bus_owner/Utils/Routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

late ConstantSheet styleSheet;
SharedPrefe prefe = SharedPrefe.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await prefe.getpref();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) {
          // CALL INSTANCE
          styleSheet = ConstantSheet.instance;
          return GetMaterialApp(
            // APP THEME
            theme: ThemeData(scaffoldBackgroundColor: styleSheet.colors.bgclr),

            // PAGE ROUTES
            getPages: appRoutes,
            initialRoute: RoutesName.splashScreen,

            // INITIAL BINDING
            initialBinding: AppInitialbinding(),

            // LANGUAGE
            locale: LanguageTranslations.locale,
            fallbackLocale: LanguageTranslations.fallbackLocale,
            translations: LanguageTranslations(),

            // debug banner
            debugShowCheckedModeBanner: false,
          );
        },
        // SCREEN SIZE
        designSize: Size(AppConfig.screenWidth, AppConfig.screenHeight));
  }
}
