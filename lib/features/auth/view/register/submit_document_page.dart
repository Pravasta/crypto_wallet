import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/auth/model/verification_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SubmitDocumentPage extends StatelessWidget {
  const SubmitDocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget location() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Select your location', style: AppText.text14),
          SizedBox(height: 10),
          Container(
            width: context.deviceWidth,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.buttonDarkColor,
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.icons.flag.path,
                  scale: 4,
                ),
                SizedBox(width: 10),
                Text(
                  'Indonesia',
                  style: AppText.text18,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down_outlined,
                    color: AppColors.whiteColor,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget verificationMethod() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Choose verification method', style: AppText.text14),
          SizedBox(height: 10),
          Column(
            children: VerificationModel.listVerification
                .map(
                  (e) => Container(
                    width: context.deviceWidth,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.buttonDarkColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          e['icon']!,
                          scale: 4,
                          color: AppColors.greyColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          e['title']!,
                          style: AppText.text18,
                        ),
                        Spacer(),
                        Radio<String>(
                          value: e['value']!,
                          groupValue: e['value'],
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      );
    }

    Widget buttonContinue() {
      return DefaultButton(
        title: 'Continue',
        onTap: () {
          Navigation.pushName(RoutesName.scanDocument);
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
          spacing: 25,
          children: [
            Text(
              'Submit documents',
              textAlign: TextAlign.center,
              style: AppText.text26.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'We are required by law to verify your identity by collecting your ID and selfie',
              textAlign: TextAlign.center,
              style: AppText.text16.copyWith(
                color: AppColors.whiteColor.withAlpha(180),
              ),
            ),
            location(),
            verificationMethod(),
            Spacer(),
            buttonContinue(),
          ],
        ),
      ),
    );
  }
}
