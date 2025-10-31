import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            // Show loading indicator
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            // Dismiss loading indicator
            context.pop();
            // Navigate to the next screen or show success message
            context.pushNamed(Routes.homeScreen);
          },
          error: (message) {
            // Show error message
            setupErrorState(context, 'error');
          },
        );
      },
      child: SizedBox.shrink(), // This widget does not render anything
    );
  }

  void setupErrorState(BuildContext context, String error) {
    // Dismiss loading indicator if present
    context.pop();
    // Show error dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(Icons.error, color: Colors.red, size: 32,),
        content: Text(error, style: TextStyles.font15DarkBlueMedium,),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text('Got it', style: TextStyles.font14BlueSemiBold,),
          ),
        ],
      ),
    );
  }
}
