import 'package:bus_owner/Components/Buttons/primary_button.dart';
import 'package:bus_owner/Controllers/language_controller.dart';
import 'package:bus_owner/Res/Apis/i18n/language_const.dart';
import 'package:bus_owner/Res/Apis/i18n/language_translations.dart';
import 'package:bus_owner/Utils/Routes/routes_name.dart';
import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectLanuage extends StatelessWidget {
  SelectLanuage({super.key});
  final languageControler = Get.find<LanguageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Choose Language",
          style: styleSheet.textTheme.fs24BoldRS,
        ),
      ),
      body: SafeArea(
          child: ListView(padding: EdgeInsets.all(10.sp), children: [
        ...List.generate(LanguageTranslations.languageList.length, (index) {
          var language = LanguageTranslations.languageList[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: GestureDetector(
              onTap: () {
                languageControler.setLanguageData(language);
              },
              child: Obx(
                () => Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 2,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    tileColor: styleSheet.colors.white,
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(100.sp),
                        child: Image.asset(
                          language.image,
                          height: 40.h,
                          width: 45.w,
                          fit: BoxFit.cover,
                        )),
                    title: Text(
                      language.languageName,
                      style: styleSheet.textTheme.fs16BoldRS,
                    ),
                    trailing: languageControler.languageData.countryCode ==
                            language.countryCode
                        ? Icon(
                            Icons.check_circle,
                            color: styleSheet.colors.primary,
                          )
                        : Icon(
                            Icons.circle_outlined,
                            color: styleSheet.colors.primary,
                          ),
                  ),
                ),
              ),
            ),
          );
        }),
      ])),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(12.sp),
          child: PrimaryButton(
              btnName: LanguageConst.continuE,
              ontap: () {
                Get.toNamed(RoutesName.welcomeScreen);
              })),
    );
  }
}
