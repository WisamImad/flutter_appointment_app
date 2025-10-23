import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class TextStyles {
  static TextStyle font24Black700Width = TextStyle(
    // sp is for scalable pixel responsive using flutter_screenutil package
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.0.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.gray,
  );

  static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}