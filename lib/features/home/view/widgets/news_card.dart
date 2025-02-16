import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.buttonDarkColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: '${data['name']} • ${data['time']} hours ago • ',
                    style: AppText.text12,
                    children: [
                      TextSpan(
                        text: '${data['coin_name']}',
                        style: AppText.text12.copyWith(
                          color: AppColors.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '${data['description']}',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.text14.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              data['image'],
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
