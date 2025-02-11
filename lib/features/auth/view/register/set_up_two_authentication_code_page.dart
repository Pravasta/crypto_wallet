import 'package:flutter/material.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/components/field/default_field.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SetUpTwoAuthenticationCodePage extends StatelessWidget {
  const SetUpTwoAuthenticationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget fieldCode() {
      return DefaultField(
        hintText: 'Enter Code',
        inputType: TextInputType.phone,
      );
    }

    Widget buttonContinue() {
      return DefaultButton(
        title: 'Continue',
        onTap: () {
          Navigation.pushName(RoutesName.personalInformation);
        },
        height: 60,
      );
    }

    Widget buttonResendCode() {
      return DefaultButton(
        title: 'Resend Code',
        onTap: () {},
        backgroundColor: AppColors.buttonDarkColor,
        borderColor: AppColors.buttonDarkColor,
        titleColor: AppColors.whiteColor,
        height: 60,
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              'Enter authentication code',
              style: AppText.text22.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Enter the 6-digit code we just texted to your phone number.',
              textAlign: TextAlign.center,
              style: AppText.text16.copyWith(
                color: AppColors.whiteColor.withAlpha(180),
              ),
            ),
            fieldCode(),
            Spacer(),
            buttonContinue(),
            buttonResendCode(),
          ],
        ),
      ),
    );
  }
}
