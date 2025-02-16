import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/home/model/home_model.dart';
import 'package:crypto_wallet/features/home/view/widgets/line_chart_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/style/app_colors.dart';
import '../../../core/constant/style/app_text.dart';
import 'widgets/market_mover_card.dart';
import 'widgets/news_card.dart';
import 'widgets/portfolio_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Assets.icons.profile.path,
              scale: 3.5,
              color: AppColors.greyColor,
            ),
            Row(
              children: [
                Image.asset(
                  Assets.icons.smallLogo.path,
                  scale: 4,
                  color: AppColors.primaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Crypto Wallet',
                  style: AppText.text20.copyWith(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Image.asset(
              Assets.icons.settings.path,
              scale: 3.5,
              color: AppColors.greyColor,
            ),
          ],
        ),
      );
    }

    Widget portfolio() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          width: context.deviceWidth,
          child: Column(
            children: [
              Text(
                'Portfolio Balance',
                style: AppText.text18.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '\$2,760.23',
                style: AppText.text30.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
              Text(
                '+2.60%',
                style: AppText.text16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 10),
              LineChartWidget(),
              SizedBox(height: 10),
            ],
          ),
        ),
      );
    }

    Widget marketMovers() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: context.deviceWidth,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Market Movers",
                    style: AppText.text18.copyWith(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'More',
                      style: AppText.text18.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                child: Row(
                  children: HomeModel.listMarketMovers
                      .map(
                        (e) => MarketMoverCard(data: e),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listPortfolio() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: context.deviceWidth,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Portfolio",
                    style: AppText.text18.copyWith(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'More',
                      style: AppText.text18.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Column(
                  children: HomeModel.listPortfolio
                      .map(
                        (e) => PortfolioCard(data: e),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget news() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: context.deviceWidth,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News",
                    style: AppText.text18.copyWith(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'More',
                      style: AppText.text18.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Column(
                  children: HomeModel.listNews
                      .map(
                        (e) => NewsCard(data: e),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              portfolio(),
              marketMovers(),
              listPortfolio(),
              news(),
            ],
          ),
        ),
      ),
    );
  }
}
