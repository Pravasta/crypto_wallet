import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SelfieVerificationPage extends StatelessWidget {
  const SelfieVerificationPage({super.key});

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
            'We will complete the photo in your document with your selfie to confirm your identity',
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
        width: context.deviceWidth,
        height: context.deviceHeight * 1 / 3,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.icons.mask.path,
            ),
          ),
        ),
        child: Image.asset(
          Assets.icons.autofocusVertical.path,
          height: context.deviceHeight * 1 / 3,
        ),
      );
    }

    Widget bottom() {
      return Column(
        children: [
          Container(
            width: context.deviceWidth,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.buttonDarkColor,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.lock,
                  color: AppColors.whiteColor,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    'The data you share will be encrypted, stored securely, and pnly used to verify your identity.',
                    style: AppText.text12,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          DefaultButton(
            title: 'Open Camera',
            onTap: () {
              Navigation.pushName(RoutesName.selfieCameraVerification);
            },
            height: 60,
          ),
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
            bottom(),
          ],
        ),
      ),
    );
  }
}
