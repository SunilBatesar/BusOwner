import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppServices {
  // SCREEN HEIGHT AND WIDTH
  screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
  screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  // Space Size Box
  addheight(double height) => SizedBox(height: height.h);
  addwidth(double width) => SizedBox(width: width.w);
}
