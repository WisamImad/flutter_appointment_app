import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowercase),
        verticalSpace(8),
        buildValidationRow('At least 1 uppercase letter', hasUppercase),
        verticalSpace(8),
        buildValidationRow('At least 1 special character', hasSpecialCharacters),
        verticalSpace(8),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(8),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidation) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.gray),
        horizontalSpace(8),
        Text(
          text,
          style: TextStyles.font13BlueRegular.copyWith(
            decoration: hasValidation
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidation ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
