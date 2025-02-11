import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(Assets.icons.protect.path, scale: 4),
                SizedBox(height: 10),
                Text(
                  'Safe Security',
                  style: AppText.bigText.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 46,
                  ),
                ),
                Text(
                  'Your security is guaranteed safe on this app.',
                  style: AppText.text18.copyWith(
                    color: AppColors.whiteColor.withAlpha(180),
                  ),
                ),
              ],
            ),
            DefaultButton(
              title: 'Get Start',
              onTap: () {
                Navigation.pushReplacement(RoutesName.auth);
              },
              backgroundColor: AppColors.buttonDarkColor,
              titleColor: AppColors.whiteColor,
              borderColor: AppColors.buttonDarkColor,
            ),
          ],
        ),
      ),
    );
  }
}
