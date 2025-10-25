import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppTextButton({
    super.key,
     this.borderRadius,
     this.backgroundColor,
     this.horizontalPadding,
     this.verticalPadding,
     this.borderWidth,
     this.buttonHeight,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0.r),
          ),
        ),
          backgroundColor: WidgetStatePropertyAll(
            backgroundColor ?? ColorsManager.mainBlue,
          ),
          padding: WidgetStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 12.0.w,
              vertical: verticalPadding ?? 14.0.h,
            ),
          ),
          fixedSize: WidgetStateProperty.all(
            Size(borderWidth ?? double.maxFinite, buttonHeight ?? 50.0.h),
          ),
        ),
      onPressed: onPressed,
      child: Text(buttonText, style: textStyle),
    );
  }
}
