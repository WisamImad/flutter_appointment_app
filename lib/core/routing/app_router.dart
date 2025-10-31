import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../fetures/home/ui/home_screen.dart';
import '../../fetures/login/logic/login_cubit.dart';
import '../../fetures/login/ui/login_screen.dart';
import '../../fetures/onbording/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this is used to pass arguments to the next screen if needed
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),);
        case Routes.homeScreen:
         return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(child: Text('No Route Found ${settings.name}')),
              ),
        );
    }
  }
}
