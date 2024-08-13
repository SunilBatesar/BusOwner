import 'package:bus_owner/Components/Buttons/primary_button.dart';
import 'package:bus_owner/Components/textfield/primary_textfield.dart';
import 'package:bus_owner/Components/widget/app_logo_and_name.dart';
import 'package:bus_owner/Res/Apis/i18n/language_const.dart';
import 'package:bus_owner/Utils/app_utils.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
// all controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  // focus node in text finle
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _fullNameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  // ===========================
  final RxBool _passwordVisible = true.obs;
  final RxBool _confirmPasswordVisible = true.obs;
  final RxBool _isChecked = false.obs;
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
                  child: Text(LanguageConst.createNewAccountHeadline.tr,
                      style: styleSheet.textTheme.fs20BoldRS),
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
                  focusNode: _emailFocusNode,
                  hintText: LanguageConst.emailhint.tr,
                  onsubmitedfun: (p0) {
                    AppUtils.fieldFocusChange(
                        context, _emailFocusNode, _fullNameFocusNode);
                  },
                ),
                styleSheet.appServices.addheight(15),
                Text(
                  LanguageConst.fullName.tr,
                  style: styleSheet.textTheme.fs14Medium
                      .copyWith(color: styleSheet.colors.mediumgray),
                ),
                styleSheet.appServices.addheight(10),
                PrimaryTextfield(
                  controller: _fullNameController,
                  focusNode: _fullNameFocusNode,
                  hintText: LanguageConst.fullNamehint.tr,
                  onsubmitedfun: (p0) {
                    AppUtils.fieldFocusChange(
                        context, _fullNameFocusNode, _passwordFocusNode);
                  },
                ),
                styleSheet.appServices.addheight(15),
                Text(
                  LanguageConst.password.tr,
                  style: styleSheet.textTheme.fs14Medium
                      .copyWith(color: styleSheet.colors.mediumgray),
                ),
                styleSheet.appServices.addheight(10),
                Obx(
                  () => PrimaryTextfield(
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    obsecure: _passwordVisible.value,
                    hintText: LanguageConst.passwordhint.tr,
                    onsubmitedfun: (p0) {
                      AppUtils.fieldFocusChange(context, _passwordFocusNode,
                          _confirmPasswordFocusNode);
                    },
                    onSufixPressed: () {
                      _passwordVisible.value = !_passwordVisible.value;
                    },
                    sufixIcon: _passwordVisible.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                styleSheet.appServices.addheight(15),
                Text(
                  LanguageConst.reTypePassword.tr,
                  style: styleSheet.textTheme.fs14Medium
                      .copyWith(color: styleSheet.colors.mediumgray),
                ),
                styleSheet.appServices.addheight(10),
                Obx(
                  () => PrimaryTextfield(
                    controller: _confirmPasswordController,
                    focusNode: _confirmPasswordFocusNode,
                    obsecure: _confirmPasswordVisible.value,
                    hintText: LanguageConst.reTypePasswordhint.tr,
                    onSufixPressed: () {
                      _confirmPasswordVisible.value =
                          !_confirmPasswordVisible.value;
                    },
                    sufixIcon: _confirmPasswordVisible.value
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                styleSheet.appServices.addheight(10),
                Row(children: [
                  Obx(
                    () => Checkbox(
                      side: BorderSide(color: styleSheet.colors.primary),
                      activeColor: styleSheet.colors.primary,
                      value: _isChecked.value,
                      onChanged: (value) {
                        _isChecked.value = value!;
                      },
                    ),
                  ),
                  Text(
                    LanguageConst.iAgreeCondition.tr,
                    style: styleSheet.textTheme.fs12Medium,
                  ),
                ]),
                styleSheet.appServices.addheight(10),
                PrimaryButton(
                    isexpanded: true,
                    btnName: LanguageConst.signupNow,
                    ontap: () {}),
                styleSheet.appServices.addheight(10),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "${LanguageConst.alreadyAccount.tr} ",
                    style: styleSheet.textTheme.fs12Medium,
                  ),
                  TextSpan(
                      text: LanguageConst.loginNow.tr,
                      style: styleSheet.textTheme.fs12Medium
                          .copyWith(decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.back();
                        })
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
