import 'package:crypto_wallet/core/components/chart/small_line_chart.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MarketCoinWidget extends StatelessWidget {
  const MarketCoinWidget({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      endActionPane: ActionPane(
        dragDismissible: false,
        extentRatio: 0.4,
        motion: ScrollMotion(),
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: AppColors.primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_border_outlined,
                  size: 30,
                  color: AppColors.whiteColor,
                ),
                Text(
                  'Add to Favorites',
                  style: AppText.text12,
                ),
              ],
            ),
          ),
        ],
      ),
      child: Container(
        width: context.deviceWidth,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonDarkColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: '${data['title']}',
                    style: AppText.text16,
                    children: [
                      TextSpan(
                        text: '/${data['type']}',
                        style: AppText.text14.copyWith(
                          color: AppColors.greyColor,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'Vol ${data['vol']}',
                  style: AppText.text12.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top price ${data['top_price']}',
                    style: AppText.text12,
                  ),
                  SmallLineChart(),
                  Text(
                    'Low price ${data['low_price']}',
                    style: AppText.text12,
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Text(
              '${data['last_price']}',
              style: AppText.text16,
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              decoration: BoxDecoration(
                color: AppColors.greenColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                '+${data['change']}%',
                style: AppText.text16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
