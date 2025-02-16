import 'package:crypto_wallet/core/components/chart/small_line_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/other/assets.gen.dart';
import '../../../../core/constant/style/app_colors.dart' show AppColors;
import '../../../../core/constant/style/app_text.dart' show AppText;

class AssetsWidget extends StatelessWidget {
  const AssetsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            spacing: 10,
            children: [
              Image.asset(
                Assets.icons.btc.path,
                scale: 2.5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BTC',
                    style: AppText.text16,
                  ),
                  Text(
                    '\$30,113.80',
                    style: AppText.text16.copyWith(
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SmallLineChart(),
                    Text(
                      '+2.76%',
                      style: AppText.text16.copyWith(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0.042148',
                    style: AppText.text16,
                  ),
                  Text(
                    '\$1,270.10',
                    style: AppText.text16.copyWith(
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            color: AppColors.greyColor,
            thickness: 0.3,
          ),
        ],
      ),
    );
  }
}
