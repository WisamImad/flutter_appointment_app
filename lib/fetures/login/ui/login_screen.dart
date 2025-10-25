import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/fetures/login/ui/widgets/already_have_an_account_text.dart';
import 'package:appointment_app/fetures/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 30.0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        obscureText: isObscureText,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          icon: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: (){},
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const AlreadyHaveAnAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
