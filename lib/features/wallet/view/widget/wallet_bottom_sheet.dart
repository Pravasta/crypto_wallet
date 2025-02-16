import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/style/app_colors.dart';

class WalletBottomSheet extends StatelessWidget {
  const WalletBottomSheet({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: context.deviceWidth,
      decoration: BoxDecoration(
        color: AppColors.buttonDarkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 50,
              height: 2,
              color: AppColors.whiteColor,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
