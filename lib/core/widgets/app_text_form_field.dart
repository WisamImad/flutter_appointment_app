import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final String hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.obscureText,
    this.suffixIcon, this.fillColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.0.w),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0.r),
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
              // r is for radius responsive using flutter_screenutil package
              borderRadius: BorderRadius.circular(16.0.r),
              borderSide: const BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.0,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0.r),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0.r),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? ColorsManager.backgroundCray,
      ),
      obscureText: obscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
