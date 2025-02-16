import 'package:crypto_wallet/features/trade/model/trade_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/other/assets.gen.dart' show Assets;
import '../../../../core/constant/style/app_colors.dart' show AppColors;
import '../../../../core/constant/style/app_text.dart' show AppText;

class LiveChartWidget extends StatelessWidget {
  const LiveChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.buttonDarkColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                Assets.icons.btc.path,
                scale: 2.5,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bitcoin',
                      style: AppText.text16,
                    ),
                    Text(
                      'BTC',
                      style: AppText.text14.copyWith(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$30,113.80',
                    style: AppText.text16.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+12.13%',
                    style: AppText.text14.copyWith(
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: TradeModel.listTools
                .map(
                  (e) => Image.asset(
                    e,
                    scale: 3,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
