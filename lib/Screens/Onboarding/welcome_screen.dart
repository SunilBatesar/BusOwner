import 'package:bus_owner/Components/Buttons/primary_button.dart';
import 'package:bus_owner/Components/widget/app_logoANDname.dart';
import 'package:bus_owner/Res/Apis/i18n/language_const.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            styleSheet.appServices.addheight(20),
            const Center(
              child: AppLogoandname(),
            ),
            Image.asset(
              styleSheet.appImage.welcomeBg,
              height: 250.h,
              width: styleSheet.appServices.screenWidth(context),
            ),
            Padding(
              padding: EdgeInsets.all(12.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LanguageConst.welcome.tr,
                    style: styleSheet.textTheme.fs24BoldRS
                        .copyWith(color: styleSheet.colors.primary),
                  ),
                  styleSheet.appServices.addheight(10),
                  Text(
                    LanguageConst.welcometitle.tr,
                    style: styleSheet.textTheme.fs16samibold
                        .copyWith(color: styleSheet.colors.black),
                  ),
                  styleSheet.appServices.addheight(10),
                  Text(
                    LanguageConst.welcomesubtitle.tr,
                    style: styleSheet.textTheme.fs12Medium
                        .copyWith(color: styleSheet.colors.gray),
                  ),
                  styleSheet.appServices.addheight(30),
                  PrimaryButton(
                      bgColor: styleSheet.colors.primary,
                      isexpanded: true,
                      btnName: LanguageConst.signupNow,
                      ontap: () {}),
                  styleSheet.appServices.addheight(10),
                  PrimaryButton(
                      isexpanded: true,
                      btnName: LanguageConst.loginNow,
                      ontap: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
