import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/market/view/widgets/header_market_tab_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/components/field/default_field.dart';
import '../../../core/constant/other/assets.gen.dart';
import '../model/market_model.dart';
import 'widgets/market_coin_widget.dart';

class MarketSearchPage extends StatelessWidget {
  const MarketSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigation.pop(),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: AppColors.greyColor,
              ),
            ),
            Text(
              'Market',
              style: AppText.text20.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset(
              Assets.icons.filter.path,
              scale: 3.5,
              color: AppColors.greyColor,
            ),
          ],
        ),
      );
    }

    Widget fieldSearch() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: DefaultField(
                padding: 0,
                prefixIcon: Image.asset(
                  Assets.icons.search.path,
                  scale: 3.5,
                ),
                hintText: 'Cryptowallet Search',
              ),
            ),
          ],
        ),
      );
    }

    Widget historySearch() {
      return HeaderMarketTabWidget(
        isSearch: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            width: context.deviceWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Search History',
                  style: AppText.text14.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.buttonDarkColor,
                  ),
                  child: Text(
                    'DOGE',
                    style: AppText.text14.copyWith(color: AppColors.greyColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget contentSearch() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Column(
          children: MarketModel.marketData
              .map(
                (e) => MarketCoinWidget(data: e),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              fieldSearch(),
              historySearch(),
              contentSearch(),
            ],
          ),
        ),
      ),
    );
  }
}
