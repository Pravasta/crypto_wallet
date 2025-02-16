import 'package:flutter/material.dart';

import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class HeaderMarketTabWidget extends StatelessWidget {
  const HeaderMarketTabWidget({
    super.key,
    this.isSearch = false,
    this.child,
  });

  final bool isSearch;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isSearch == false && child == null ? contentHeader() : child!,
        Divider(
          color: AppColors.greyColor,
          thickness: 0.3,
        ),
      ],
    );
  }

  Widget contentHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Pair\nUSDT :',
            textAlign: TextAlign.center,
            style: AppText.text14.copyWith(fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Text(
                'Last\nPrice :',
                textAlign: TextAlign.center,
                style: AppText.text14.copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 20),
              Text(
                '24H\nChange :',
                textAlign: TextAlign.center,
                style: AppText.text14.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
