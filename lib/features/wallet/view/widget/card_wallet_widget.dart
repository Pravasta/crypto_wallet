import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/style/app_colors.dart';

class CardWalletWidget extends StatelessWidget {
  const CardWalletWidget({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        shadowColor: AppColors.blueColor,
        elevation: 4,
        child: Container(
          height: context.deviceHeight * 1 / 3.8,
          width: context.deviceWidth - 40,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 61, 95, 157),
                const Color.fromARGB(255, 31, 68, 135),
                const Color.fromARGB(255, 16, 47, 106),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.icons.smallLogo.path,
                    scale: 5,
                    color: AppColors.whiteColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Cryptowallet',
                    style: AppText.text16.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Image.asset(
                    Assets.icons.cardShare.path,
                    scale: 3.5,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
              Text(
                '${data['number_card']}',
                style: AppText.text26.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Holder',
                        style: AppText.text14
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '${data['name']}',
                        style: AppText.text14
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    'Expire ${data['expire']}',
                    style: AppText.text14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
