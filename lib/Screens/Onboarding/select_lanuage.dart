import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectLanuage extends StatelessWidget {
  const SelectLanuage({super.key});
  @override
  Widget build(BuildContext context) {
    RxInt select = 0.obs;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(10.sp),
        children: [
          Center(
              child: Text(
            "Choose Language",
            style: styleSheet.textTheme.fs24Bold,
          )),
          styleSheet.appServices.addheight(10),
          ...List.generate(
            2,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: GestureDetector(
                onTap: () {
                  select.value = index;
                },
                child: Obx(
                  () => ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: styleSheet.colors.white,
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(100.sp),
                        child: Image.asset(
                          "assets/icons/EnglandFlag.png",
                          height: 40.h,
                        )),
                    title: Text(
                      "English",
                      style: styleSheet.textTheme.fs16Bold,
                    ),
                    trailing: select.value == index
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
          )
        ],
      )),
    );
  }
}
