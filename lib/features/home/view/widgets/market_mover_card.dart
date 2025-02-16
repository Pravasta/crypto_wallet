import 'package:crypto_wallet/core/components/chart/small_line_chart.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

class MarketMoverCard extends StatelessWidget {
  const MarketMoverCard({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth * 1 / 2.1,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.buttonDarkColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['name'],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.text18,
                    ),
                    Text(
                      '${data['price_now']}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.text18,
                    )
                  ],
                ),
              ),
              Image.asset(
                data['icon'],
                scale: 2,
              )
            ],
          ),
          Text(
            '+${data['increased']}%',
            style: AppText.text16.copyWith(
              color: AppColors.greenColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SmallLineChart(),
          Text(
            '24H Vol.',
            style: AppText.text14.copyWith(
              color: AppColors.greyColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${data['income']}',
            style: AppText.text14.copyWith(
              color: AppColors.greyColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
