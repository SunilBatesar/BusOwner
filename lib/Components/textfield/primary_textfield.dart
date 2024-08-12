import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextfield extends StatelessWidget {
  const PrimaryTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          fillColor: styleSheet.colors.white,
          filled: true,
          hintText: "Enter your email",
          hintStyle: styleSheet.textTheme.fs14Normal
              .copyWith(color: styleSheet.colors.lightgray),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(color: styleSheet.colors.gray)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(color: styleSheet.colors.gray)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.r),
              borderSide: BorderSide(color: styleSheet.colors.gray)),
          suffixIcon: Icon(
            Icons.visibility,
            color: styleSheet.colors.primary,
          )),
    );
  }
}
