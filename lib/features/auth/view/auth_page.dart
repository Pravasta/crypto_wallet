import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.icons.walletSignin.path,
              scale: 3.5,
            ),
            Text(
              'Create an Account',
              style: AppText.text26.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            DefaultButton(
              title: 'Sign Up with Email',
              onTap: () {
                Navigation.pushName(RoutesName.register);
              },
              height: 60,
              iconUrl: Assets.icons.profile.path,
            ),
            Text(
              'or',
              style: AppText.text16,
            ),
            DefaultButton(
              title: 'Continue with Google',
              onTap: () {},
              height: 60,
              iconUrl: Assets.icons.google.path,
              backgroundColor: AppColors.buttonDarkColor,
              borderColor: AppColors.buttonDarkColor,
              titleColor: AppColors.whiteColor,
            ),
            Text.rich(
              TextSpan(
                text: "Already have an account? ",
                style: AppText.text16,
                children: [
                  TextSpan(
                    text: 'Log In',
                    style: AppText.text16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigation.pushName(RoutesName.login),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
