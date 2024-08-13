import 'package:bus_owner/Components/Buttons/primary_button.dart';
import 'package:bus_owner/Components/textfield/primary_textfield.dart';
import 'package:bus_owner/Components/widget/app_logo_and_name.dart';
import 'package:bus_owner/Res/Apis/i18n/language_const.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final RxBool _passwordVisible = true.obs;
    final RxBool isChecked = false.obs;
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
              PrimaryTextfield(hintText: LanguageConst.emailhint.tr),
              styleSheet.appServices.addheight(20),
              Text(
                LanguageConst.password.tr,
                style: styleSheet.textTheme.fs14Medium
                    .copyWith(color: styleSheet.colors.mediumgray),
              ),
              styleSheet.appServices.addheight(10),
              Obx(
                () => PrimaryTextfield(
                  obsecure: _passwordVisible.value,
                  hintText: LanguageConst.passwordhint.tr,
                  onSufixPressed: () {
                    _passwordVisible.value = !_passwordVisible.value;
                  },
                  sufixIcon: _passwordVisible.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
              ),
              styleSheet.appServices.addheight(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          side: BorderSide(color: styleSheet.colors.primary),
                          activeColor: styleSheet.colors.primary,
                          value: isChecked.value,
                          onChanged: (value) {
                            isChecked.value = value!;
                          },
                        ),
                      ),
                      Text(
                        LanguageConst.rememberMe.tr,
                        style: styleSheet.textTheme.fs12Medium,
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        LanguageConst.forgotPassword.tr,
                        style: styleSheet.textTheme.fs12Medium
                            .copyWith(color: styleSheet.colors.black),
                      ))
                ],
              ),
              styleSheet.appServices.addheight(10),
              PrimaryButton(
                  isexpanded: true,
                  btnName: LanguageConst.loginNow,
                  ontap: () {}),
              styleSheet.appServices.addheight(10),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: "${LanguageConst.dontAccount.tr} ",
                  style: styleSheet.textTheme.fs12Medium,
                ),
                TextSpan(
                    text: LanguageConst.signupNow.tr,
                    style: styleSheet.textTheme.fs12Medium
                        .copyWith(decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap = () {})
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
