import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:flutter/material.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key});

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  bool isObsecure = true;
  final String email = 'fitrayanaf11@gmail.com';

  @override
  Widget build(BuildContext context) {
    Widget fieldEmailCode() {
      return DefaultField(
        hintText: 'Enter Email Code',
        inputType: TextInputType.number,
      );
    }

    Widget buttonNext() {
      return DefaultButton(
        title: 'Submit',
        onTap: () {
          Navigation.pushName(RoutesName.secureAccount);
        },
        height: 60,
      );
    }

    Widget description() {
      return Text(
        'Please enter the 6-digit verification code that was sent to your email. The code is valid for 20 minutes',
        style: AppText.text16.copyWith(
          fontWeight: FontWeight.w300,
          color: AppColors.whiteColor.withAlpha(180),
          height: 1.6,
        ),
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
                'Email Verification',
                style: AppText.text26.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              description(),
              SizedBox(height: 5),
              fieldEmailCode(),
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
