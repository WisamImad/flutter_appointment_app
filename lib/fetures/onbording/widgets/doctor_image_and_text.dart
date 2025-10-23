import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_low_op.svg'),
        Container(
            foregroundDecoration:  BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,              // أسفل أبيض كامل
                  Colors.white.withOpacity(0.0), // يتدرج إلى شفاف للأعلى
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                // stop the gradient at 14% to cover only the bottom part of the image
                stops: const [0.14,0.4],
              ),
            ),
            child: Image.asset('assets/images/onboarding_doctor.png')),
        Positioned(
          bottom: 30.h,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4.h),
          ),
        ),
      ],
    );
  }
}
