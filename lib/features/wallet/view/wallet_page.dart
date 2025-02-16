import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/wallet/view/tab/wallet_cards_tab.dart';
import 'package:crypto_wallet/features/wallet/view/tab/wallet_portfolio_tab.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/other/assets.gen.dart';
import '../../../core/constant/style/app_colors.dart';
import '../../../core/constant/style/app_text.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Wallet',
              style: AppText.text20.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset(
              Assets.icons.smallScan.path,
              scale: 3.5,
              color: AppColors.greyColor,
            ),
          ],
        ),
      );
    }

    Widget tabbarWallet() {
      return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.buttonDarkColor,
          ),
          width: context.deviceWidth,
          child: TabBar(
            tabAlignment: TabAlignment.fill,
            dividerHeight: 0,
            indicatorWeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.buttonDarkLightColor,
            ),
            tabs: [
              Tab(
                text: 'Cards',
              ),
              Tab(
                text: 'Portfolio',
              )
            ],
          ),
        ),
      );
    }

    Widget contentWallet() {
      return Expanded(
        child: TabBarView(
          children: [
            WalletCardsTab(),
            WalletPortfolioTab(),
          ],
        ),
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              appBar(),
              tabbarWallet(),
              contentWallet(),
            ],
          ),
        ),
      ),
    );
  }
}
