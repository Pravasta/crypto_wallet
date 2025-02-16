import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/features/market/model/market_model.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/style/app_colors.dart';
import '../../../core/constant/style/app_text.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
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
                isEnabled: false,
                onTap: () => Navigation.pushName(RoutesName.searchMarket),
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

    Widget tabbarMarket() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TabBar(
          tabAlignment: TabAlignment.start,
          dividerHeight: 0,
          isScrollable: true,
          indicatorWeight: 0,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.blueColor,
          ),
          tabs: MarketModel.listTabMarket
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7.0,
                    horizontal: 10,
                  ),
                  child: Text(
                    e['label'],
                    style: AppText.text14,
                  ),
                ),
              )
              .toList(),
        ),
      );
    }

    Widget contentMarket() {
      return Expanded(
        child: TabBarView(
            physics: AlwaysScrollableScrollPhysics(),
            children: MarketModel.listTabMarket
                .map(
                  (e) => e['tab'] as Widget,
                )
                .toList()),
      );
    }

    return DefaultTabController(
      length: MarketModel.listTabMarket.length,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              appBar(),
              fieldSearch(),
              tabbarMarket(),
              contentMarket(),
            ],
          ),
        ),
      ),
    );
  }
}
