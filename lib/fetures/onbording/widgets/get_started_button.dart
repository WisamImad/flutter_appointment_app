import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.mainBlue,
        minimumSize: Size(double.infinity, 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteBold,
      ),
    );
  }
}
