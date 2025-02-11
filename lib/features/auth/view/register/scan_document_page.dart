import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class ScanDocumentPage extends StatelessWidget {
  const ScanDocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 25,
        children: [
          Text(
            'Scan documents',
            textAlign: TextAlign.center,
            style: AppText.text26.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Place the document in the frame until all 4 edges align around the document and turn blue',
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
        height: context.deviceHeight * 1 / 4,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.icons.examplePasspor.path,
            ),
          ),
        ),
        child: Image.asset(
          Assets.icons.autofocus.path,
          fit: BoxFit.cover,
          height: context.deviceHeight * 1 / 4,
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
              Navigation.pushName(RoutesName.scanCamera);
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
