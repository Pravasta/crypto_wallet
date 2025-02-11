import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/other/assets.gen.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SelfieCameraVerificationPage extends StatelessWidget {
  const SelfieCameraVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 25,
        children: [
          Text(
            'Selfie Verification',
            textAlign: TextAlign.center,
            style: AppText.text26.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Hold your phone at eye level and look directly into the camera, when the frame turns blue take a photo',
            textAlign: TextAlign.center,
            style: AppText.text16.copyWith(
              color: AppColors.whiteColor.withAlpha(180),
            ),
          ),
        ],
      );
    }

    Widget images() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonDarkColor,
        ),
        padding: EdgeInsets.all(10),
        width: context.deviceWidth,
        height: context.deviceHeight * 1 / 3,
        child: Image.asset(
          Assets.icons.autofocusVertical.path,
          height: context.deviceHeight * 1 / 3,
        ),
      );
    }

    Widget buttonCapture() {
      return Column(
        children: [
          InkWell(
            onTap: () {
              Navigation.pushReplacement(RoutesName.verificationSuccess);
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.whiteColor,
              ),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.whiteColor,
                  border: Border.all(color: AppColors.blackColor, width: 3),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title(),
            images(),
            buttonCapture(),
          ],
        ),
      ),
    );
  }
}
