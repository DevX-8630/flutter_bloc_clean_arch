import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_arch/view/home/home_screen.dart';
import 'package:flutter_bloc_clean_arch/view/login/login_screen.dart';
import 'package:flutter_bloc_clean_arch/view/splash/splash_screen.dart';
import 'package:flutter_bloc_clean_arch/view/config/routes/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text(
                'No Route Generated',
              ),
            ),
          ),
        );
    }
  }
}
