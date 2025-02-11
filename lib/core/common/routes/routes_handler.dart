import 'package:crypto_wallet/features/auth/view/auth_page.dart';
import 'package:crypto_wallet/features/auth/view/register/email_verification_page.dart';
import 'package:crypto_wallet/features/auth/view/forgot_password/forgot_password_page.dart';
import 'package:crypto_wallet/features/auth/view/forgot_password/security_verification_page.dart';
import 'package:crypto_wallet/features/auth/view/login/login_page.dart';
import 'package:crypto_wallet/features/auth/view/register/input_personal_information_page.dart';
import 'package:crypto_wallet/features/auth/view/register/register_page.dart';
import 'package:crypto_wallet/features/auth/view/register/scan_camera_page.dart';
import 'package:crypto_wallet/features/auth/view/register/scan_document_page.dart';
import 'package:crypto_wallet/features/auth/view/register/secure_account_page.dart';
import 'package:crypto_wallet/features/auth/view/register/selfie_camera_verification_page.dart';
import 'package:crypto_wallet/features/auth/view/register/selfie_verification_page.dart';
import 'package:crypto_wallet/features/auth/view/register/set_up_two_authentication_code_page.dart';
import 'package:crypto_wallet/features/auth/view/register/set_up_two_step_verification_page.dart';
import 'package:crypto_wallet/features/auth/view/register/submit_document_page.dart';
import 'package:crypto_wallet/features/auth/view/register/verification_succes_page.dart';
import 'package:crypto_wallet/features/main_page/view/main_page.dart';
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
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case RoutesName.intro:
        return MaterialPageRoute(
          builder: (context) => IntroPage(),
          settings: settings,
        );
      case RoutesName.auth:
        return MaterialPageRoute(
          builder: (context) => AuthPage(),
          settings: settings,
        );
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
          settings: settings,
        );
      case RoutesName.register:
        return MaterialPageRoute(
          builder: (context) => RegisterPage(),
          settings: settings,
        );
      case RoutesName.emailVerification:
        return MaterialPageRoute(
          builder: (context) => EmailVerificationPage(),
          settings: settings,
        );
      case RoutesName.forgotPassword:
        return MaterialPageRoute(
          builder: (context) => ForgotPasswordPage(),
          settings: settings,
        );
      case RoutesName.securityVerification:
        return MaterialPageRoute(
          builder: (context) => SecurityVerificationPage(),
          settings: settings,
        );
      case RoutesName.mainPage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
          settings: settings,
        );
      case RoutesName.secureAccount:
        return MaterialPageRoute(
          builder: (context) => SecureAccountPage(),
          settings: settings,
        );
      case RoutesName.setUpTwoStepVerification:
        return MaterialPageRoute(
          builder: (context) => SetUpTwoStepVerificationPage(),
          settings: settings,
        );
      case RoutesName.setUpTwoAuthenticationCodePage:
        return MaterialPageRoute(
          builder: (context) => SetUpTwoAuthenticationCodePage(),
          settings: settings,
        );
      case RoutesName.personalInformation:
        return MaterialPageRoute(
          builder: (context) => InputPersonalInformationPage(),
          settings: settings,
        );
      case RoutesName.submitDocument:
        return MaterialPageRoute(
          builder: (context) => SubmitDocumentPage(),
          settings: settings,
        );
      case RoutesName.scanDocument:
        return MaterialPageRoute(
          builder: (context) => ScanDocumentPage(),
          settings: settings,
        );
      case RoutesName.scanCamera:
        return MaterialPageRoute(
          builder: (context) => ScanCameraPage(),
          settings: settings,
        );
      case RoutesName.selfieVerification:
        return MaterialPageRoute(
          builder: (context) => SelfieVerificationPage(),
          settings: settings,
        );
      case RoutesName.selfieCameraVerification:
        return MaterialPageRoute(
          builder: (context) => SelfieCameraVerificationPage(),
          settings: settings,
        );
      case RoutesName.verificationSuccess:
        return MaterialPageRoute(
          builder: (context) => VerificationSuccesPage(),
          settings: settings,
        );

      default:
        return _emptyPage;
    }
  }
}
