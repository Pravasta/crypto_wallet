import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            Assets.icons.btc.path,
            scale: 2,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Apple',
                  style: AppText.text16,
                ),
                Text(
                  'Payment for subscription',
                  style: AppText.text14.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '-8.99\$',
            style: AppText.text18,
          ),
        ],
      ),
    );
  }
}
