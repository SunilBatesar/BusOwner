import 'package:bus_owner/Components/Buttons/primary_button.dart';
import 'package:bus_owner/Components/textfield/primary_textfield.dart';
import 'package:bus_owner/Components/widget/app_logo_and_name.dart';
import 'package:bus_owner/Res/Apis/i18n/language_const.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  // all Controller
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                LanguageConst.forgotTitle.tr,
                style: styleSheet.textTheme.fs14Medium
                    .copyWith(color: styleSheet.colors.mediumgray),
              ),
              styleSheet.appServices.addheight(15),
              Text(
                LanguageConst.email.tr,
                style: styleSheet.textTheme.fs14Medium
                    .copyWith(color: styleSheet.colors.mediumgray),
              ),
              styleSheet.appServices.addheight(10),
              PrimaryTextfield(
                controller: _emailController,
                hintText: LanguageConst.emailhint.tr,
              ),
              styleSheet.appServices.addheight(10),
              PrimaryButton(
                  isexpanded: true,
                  btnName: LanguageConst.resetPassword,
                  ontap: () {
                    Get.snackbar(LanguageConst.resendTost.tr, '');
                  }),
              styleSheet.appServices.addheight(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        LanguageConst.havingProglam.tr,
                        style: styleSheet.textTheme.fs12Medium
                            .copyWith(color: styleSheet.colors.black),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        LanguageConst.resendTime.tr,
                        style: styleSheet.textTheme.fs12Medium
                            .copyWith(color: styleSheet.colors.black),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
