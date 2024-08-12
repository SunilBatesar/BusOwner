import 'package:bus_owner/Components/textfield/primary_textfield.dart';
import 'package:bus_owner/Components/widget/app_logo_and_name.dart';
import 'package:bus_owner/Res/Apis/i18n/language_const.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              styleSheet.appServices.addheight(15),
              const Center(
                child: AppLogoandname(),
              ),
              styleSheet.appServices.addheight(20),
              Center(
                child: Text(LanguageConst.welcome.tr,
                    style: styleSheet.textTheme.fs20BoldRS),
              ),
              styleSheet.appServices.addheight(20),
              Text(
                LanguageConst.email.tr,
                style: styleSheet.textTheme.fs14Medium
                    .copyWith(color: styleSheet.colors.mediumgray),
              ),
              styleSheet.appServices.addheight(10),
              PrimaryTextfield()
            ],
          ),
        ),
      ),
    );
  }
}
