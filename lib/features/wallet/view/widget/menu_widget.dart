import 'package:flutter/material.dart';

import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';
import '../../model/wallet_model.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: WalletModel.listMenuWallet
          .map(
            (e) => Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.blueColor,
                  ),
                  child: Image.asset(
                    e['icon'],
                    scale: 3.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  e['label'],
                  style: AppText.text16.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
