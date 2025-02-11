import 'package:flutter/material.dart';

import 'package:crypto_wallet/core/components/field/default_field.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SetUpTwoStepVerificationPage extends StatefulWidget {
  const SetUpTwoStepVerificationPage({super.key});

  @override
  State<SetUpTwoStepVerificationPage> createState() =>
      _SetUpTwoStepVerificationPageState();
}

class _SetUpTwoStepVerificationPageState
    extends State<SetUpTwoStepVerificationPage> {
  @override
  Widget build(BuildContext context) {
    Widget fieldPhone() {
      return DefaultField(
        hintText: 'Enter Phone Number',
        inputType: TextInputType.phone,
      );
    }

    Widget buttonContinue() {
      return DefaultButton(
        title: 'Continue',
        onTap: () {
          Navigation.pushName(RoutesName.setUpTwoAuthenticationCodePage);
        },
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
              'Set up 2-step verification',
              style: AppText.text22.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Enter your phone number so we can text you an authentication code.',
              textAlign: TextAlign.center,
              style: AppText.text16.copyWith(
                color: AppColors.whiteColor.withAlpha(180),
              ),
            ),
            fieldPhone(),
            Spacer(),
            buttonContinue(),
          ],
        ),
      ),
    );
  }
}
