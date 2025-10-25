import 'package:appointment_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

class TextStyles {
  static TextStyle font24BlackBold= TextStyle(
    // sp is for scalable pixel responsive using flutter_screenutil package
    fontSize: 24.0.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.0.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );
  
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.0.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );
  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );
  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightGray,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
}