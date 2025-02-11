import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SecureAccountPage extends StatelessWidget {
  const SecureAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 10,
              children: [
                Image.asset(
                  Assets.icons.scan.path,
                  scale: 3.5,
                ),
                SizedBox(height: 10),
                Text(
                  'Secure your account',
                  style: AppText.text26.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'One way we keep your account secure is with 2-step verification, which requires your phone number. We will never call you or use your number without your permission.',
                  textAlign: TextAlign.center,
                  style: AppText.text16.copyWith(
                    color: AppColors.whiteColor.withAlpha(180),
                  ),
                ),
              ],
            ),
            DefaultButton(
              title: 'Continue',
              onTap: () {
                Navigation.pushName(RoutesName.setUpTwoStepVerification);
              },
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
