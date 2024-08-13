import 'package:bus_owner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextfield extends StatelessWidget {
  final String hintText;
  final IconData? sufixIcon;
  final Function? onSufixPressed;
  final bool obsecure;
  const PrimaryTextfield(
      {super.key,
      required this.hintText,
      this.sufixIcon,
      this.onSufixPressed,
      this.obsecure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      decoration: InputDecoration(
          isDense: true,
          fillColor: styleSheet.colors.white,
          filled: true,
          hintText: hintText,
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
          suffixIcon: sufixIcon != null
              ? IconButton(
                  onPressed:
                      onSufixPressed != null ? () => onSufixPressed!() : null,
                  icon: Icon(
                    sufixIcon,
                    color: styleSheet.colors.primary,
                  ))
              : const SizedBox()),
    );
  }
}
