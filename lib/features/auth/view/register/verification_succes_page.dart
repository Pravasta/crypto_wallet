import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:flutter/material.dart';
import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class VerificationSuccesPage extends StatelessWidget {
  const VerificationSuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Image.asset(
              Assets.images.illustration.path,
              scale: 3,
            ),
            Text(
              'Verification Success',
              textAlign: TextAlign.center,
              style: AppText.text26.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Congratulations your account is ready to use, now you can start trading cryptocurrency',
              textAlign: TextAlign.center,
              style: AppText.text16.copyWith(
                color: AppColors.whiteColor.withAlpha(180),
              ),
            ),
            DefaultButton(
              title: 'Start Now',
              onTap: () {
                Navigation.pushNameAndRemove(RoutesName.auth);
              },
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
