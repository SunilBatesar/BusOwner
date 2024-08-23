import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLogoandname extends StatelessWidget {
  const AppLogoandname({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: styleSheet.colors.primary,
              borderRadius: BorderRadius.circular(10.r)),
          child: Image.asset(
            styleSheet.appConfig.applogo,
            height: 55.h,
          ),
        ),
        Text(
          styleSheet.appConfig.appName,
          style: styleSheet.textTheme.appNameTextStyle30
              .copyWith(color: styleSheet.colors.primary),
        )
      ],
    );
  }
}
