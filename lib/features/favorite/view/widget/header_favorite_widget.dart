import 'package:flutter/material.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class HeaderFavoriteWidget extends StatelessWidget {
  const HeaderFavoriteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
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
        ),
        Divider(
          color: AppColors.greyColor,
          thickness: 0.3,
        ),
      ],
    );
  }
}
