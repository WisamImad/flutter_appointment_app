import 'package:appointment_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../fetures/login/ui/screen/login_screen.dart';
import '../../fetures/onbording/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this is used to pass arguments to the next screen if needed
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
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
