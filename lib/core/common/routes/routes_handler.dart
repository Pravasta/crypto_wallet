import 'package:crypto_wallet/features/splash_intro/intro_page.dart';
import 'package:flutter/material.dart';

import '../../../features/splash_intro/splash_page.dart';
import '../../constant/style/app_text.dart';
import 'routes_name.dart';

class RoutesHandler {
  final String initialRoutes = RoutesName.initial;
  static const initialNavbarVisibility = true;

  static MaterialPageRoute get _emptyPage {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: Center(
            child: Text(
              'Not Found',
              style: AppText.text24.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
          settings: settings,
        );
      case RoutesName.intro:
        return MaterialPageRoute(
          builder: (context) => const IntroPage(),
          settings: settings,
        );

      default:
        return _emptyPage;
    }
  }
}
