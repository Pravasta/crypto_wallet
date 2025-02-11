import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class InputPersonalInformationPage extends StatelessWidget {
  const InputPersonalInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget fieldFirstName() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text('First Name', style: AppText.text16),
          DefaultField(
            hintText: 'Input first name',
            inputType: TextInputType.name,
          ),
        ],
      );
    }

    Widget fieldLastName() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text('Last Name', style: AppText.text16),
          DefaultField(
            hintText: 'Input last name',
            inputType: TextInputType.name,
          ),
        ],
      );
    }

    Widget fieldDateOfBirth() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text('Date of birth', style: AppText.text16),
          DefaultField(
            hintText: 'MM / DD / YYYY',
            inputType: TextInputType.datetime,
          ),
        ],
      );
    }

    Widget buttonContinue() {
      return DefaultButton(
        title: 'Continue',
        onTap: () {
          Navigation.pushName(RoutesName.submitDocument);
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 25,
            children: [
              Text(
                'Enter your personal information',
                textAlign: TextAlign.center,
                style: AppText.text20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Enter your personal information',
                textAlign: TextAlign.center,
                style: AppText.text16.copyWith(
                  color: AppColors.whiteColor.withAlpha(180),
                ),
              ),
              fieldFirstName(),
              fieldLastName(),
              fieldDateOfBirth(),
              buttonContinue(),
            ],
          ),
        ),
      ),
    );
  }
}
