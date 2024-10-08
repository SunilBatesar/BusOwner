import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final String btnName;
  final Function ontap;
  final Color? bgColor;
  final bool isexpanded;
  const PrimaryButton(
      {super.key,
      required this.btnName,
      required this.ontap,
      this.bgColor,
      this.isexpanded = false});

  @override
  Widget build(BuildContext context) {
    final btn = TextButton(
      onPressed: () => ontap(),
      style: TextButton.styleFrom(
          backgroundColor: bgColor ?? styleSheet.colors.secondary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r))),
      child: Text(
        btnName.tr,
        style: styleSheet.textTheme.fs16Normal
            .copyWith(color: styleSheet.colors.white),
      ),
    );
    return isexpanded
        ? Row(
            children: [
              Expanded(child: btn),
            ],
          )
        : btn;
  }
}
