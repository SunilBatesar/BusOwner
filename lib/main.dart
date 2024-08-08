import 'package:bus_owner/Classes/constant_sheet.dart';
import 'package:bus_owner/Controllers/app_initialBinding.dart';
import 'package:bus_owner/Utils/Routes/app_routes.dart';
import 'package:bus_owner/Utils/Routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

late ConstantSheet styleSheet;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) {
          styleSheet = ConstantSheet.instance;
          return GetMaterialApp(
            // app theme
            theme: ThemeData(scaffoldBackgroundColor: styleSheet.colors.bgclr),
            // Page Routes
            getPages: appRoutes,
            initialRoute: RoutesName.splashScreen,
            // Initial Binding
            initialBinding: AppInitialbinding(),
          );
        },
        // Screen Size
        designSize: Size(392, 783));
  }
}
