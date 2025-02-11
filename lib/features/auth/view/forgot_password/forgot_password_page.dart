import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/components/field/default_field.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget icons() {
      return Column(
        spacing: 30,
        children: [
          Image.asset(
            Assets.icons.resetEmail.path,
            scale: 3.5,
          ),
          Text(
            'Reset Password',
            style: AppText.text26.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    Widget fieldNewPassword() {
      return DefaultField(
        hintText: 'Enter New Password',
        inputType: TextInputType.text,
      );
    }

    Widget buttonSubmit() {
      return DefaultButton(
        title: 'Submit',
        onTap: () {
          Navigation.pushName(RoutesName.securityVerification);
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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 25,
            children: [
              icons(),
              fieldNewPassword(),
              buttonSubmit(),
            ],
          ),
        ),
      ),
    );
  }
}
