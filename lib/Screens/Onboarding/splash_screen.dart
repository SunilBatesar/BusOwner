import 'package:bus_owner/Utils/Routes/routes_name.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  initialize() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(RoutesName.selectLanuage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styleSheet.colors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              styleSheet.appConfig.applogo,
              height: 450.sp,
            ),
            Text(
              styleSheet.appConfig.appName,
              style: styleSheet.textTheme.appNameTextStyle
                  .copyWith(color: styleSheet.colors.white),
            ),
            Text(
              "Bus Service",
              style: styleSheet.textTheme.fs18Medium
                  .copyWith(color: styleSheet.colors.white),
            )
          ],
        ),
      ),
    );
  }
}
