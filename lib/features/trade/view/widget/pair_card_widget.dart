import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:flutter/material.dart';

class PairCardWidget extends StatelessWidget {
  const PairCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget sellOrBuyText(String label, String value) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppText.text14.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          Text(
            value,
            style: AppText.text14.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'XRP/USDT',
                  style: AppText.text16.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '2022/07/01 08:33:45',
                style: AppText.text14.copyWith(color: AppColors.greyColor),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: 'Sell ',
                    style: AppText.text16.copyWith(
                      color: AppColors.redColor,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'Limit',
                        style: AppText.text16,
                      ),
                    ],
                  ),
                ),
              ),
              DefaultButton(
                width: 100,
                height: 30,
                backgroundColor: AppColors.fieldColor,
                borderColor: AppColors.fieldColor,
                titleColor: AppColors.greyColor,
                borderRadius: 10,
                title: 'Cancel',
                onTap: () {},
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: sellOrBuyText('Price', '1.912'),
              ),
              SizedBox(width: 20),
              Expanded(
                child: sellOrBuyText('Filled', '0.00%'),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: sellOrBuyText('Amount', '55.5'),
              ),
              SizedBox(width: 20),
              Expanded(
                child: sellOrBuyText('Total', '=106.116 USDT'),
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(
            thickness: 0.4,
            color: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
