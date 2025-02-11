import 'package:flutter/material.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/components/field/default_field.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SecurityVerificationPage extends StatelessWidget {
  const SecurityVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget fieldSecurityVerification() {
      return DefaultField(
        hintText: 'Enter Verification Code',
        inputType: TextInputType.number,
      );
    }

    Widget buttonNext() {
      return DefaultButton(
        title: 'Submit',
        onTap: () {
          Navigation.pushReplacement(RoutesName.auth);
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
            spacing: 15,
            children: [
              Text(
                'Security Verification',
                style: AppText.text26.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              fieldSecurityVerification(),
              SizedBox(height: 5),
              buttonNext(),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Send Code Again',
                  style: AppText.text16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
