import 'package:bus_owner/Components/widget/app_logo_and_name.dart';
import 'package:bus_owner/Res/Apis/i18n/language_const.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              styleSheet.appServices.addheight(10),
              const Center(
                child: AppLogoandname(),
              ),
              styleSheet.appServices.addheight(15),
              Center(
                child: Text(LanguageConst.forgotPassword.tr,
                    style: styleSheet.textTheme.fs20BoldRS),
              ),
              styleSheet.appServices.addheight(15),
            ],
          ),
        ),
      )),
    );
  }
}
