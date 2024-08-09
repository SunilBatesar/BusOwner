import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  AppColors();
  Color bgclr = const Color(0xffF0ECF9);
  Color primary = const Color(0xff2ECC71);
  Color secondary = const Color(0xffEB6105);
  Color black = const Color(0xff000000);
  Color white = const Color(0xffFFFFFF);
  Color transparent = const Color(0x00000000);
  Color lightwhite = const Color(0xffF1EDED);
  Color gray = const Color(0xff4A4A4A);
  Color lightgray = const Color(0xffD9D9D9);
  Color darkgray = const Color(0xffB3B3BA);
}

class AppTextTheme {
  AppTextTheme();
  // APP TextStyle
  TextStyle appNameTextStyle30 =
      GoogleFonts.dancingScript(fontSize: 30.sp, fontWeight: FontWeight.w500);
  TextStyle appNameTextStyle50 =
      GoogleFonts.dancingScript(fontSize: 50.sp, fontWeight: FontWeight.w500);

  // NORMAL

  TextStyle fs14Normal =
      GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400);
  TextStyle fs16Normal =
      GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w400);

  // MEDIUM
  TextStyle fs12Medium =
      GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w500);
  TextStyle fs18Medium =
      GoogleFonts.poppins(fontSize: 18.sp, fontWeight: FontWeight.w500);
  TextStyle fs20Medium =
      GoogleFonts.poppins(fontSize: 20.sp, fontWeight: FontWeight.w500);

  // sami bold
  TextStyle fs16samibold =
      GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w600);

  //bold
  TextStyle fs14bold =
      GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w700);

  // BOLD robotoSerif
  TextStyle fs16BoldRS =
      GoogleFonts.robotoSerif(fontSize: 16.sp, fontWeight: FontWeight.w700);

  TextStyle fs24BoldRS =
      GoogleFonts.robotoSerif(fontSize: 24.sp, fontWeight: FontWeight.w700);
}
