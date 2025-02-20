import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/trade/view/widget/live_chart_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/style/app_colors.dart' show AppColors;
import '../../../core/constant/style/app_text.dart' show AppText;

class TradingPage extends StatelessWidget {
  const TradingPage({super.key});

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
              'Trading',
              style: AppText.text20.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(),
          ],
        ),
      );
    }

    Widget listSelectedTime() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
                text: '1Hour',
              ),
              Tab(
                text: '1Day',
              ),
              Tab(
                text: '1Month',
              ),
              Tab(
                text: '1Year',
              ),
            ],
          ),
        ),
      );
    }

    Widget liveChart() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: LiveChartWidget(),
      );
    }

    Widget popularPairs() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Pairs',
              style: AppText.text16.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.blueColor,
                  ),
                  child: Text(
                    'BTC/USD',
                    style: AppText.text14,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget tradingHistory() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trading History',
              style: AppText.text16.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price', style: AppText.text14),
                Text('Amount', style: AppText.text14),
                Text('Time', style: AppText.text14),
              ],
            ),
            for (int i = 0; i < 12; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '30,113.84',
                    style: AppText.text14.copyWith(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text('1,76676', style: AppText.text14),
                  Text('09:41:13', style: AppText.text14),
                ],
              ),
          ],
        ),
      );
    }

    Widget buttonAction() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          spacing: 20,
          children: [
            Expanded(
              child: DefaultButton(
                title: 'Sell',
                borderRadius: 10,
                borderColor: AppColors.blueColor,
                backgroundColor: AppColors.buttonDarkColor,
                titleColor: AppColors.whiteColor,
                onTap: () {},
              ),
            ),
            Expanded(
              child: DefaultButton(
                title: 'Buy',
                borderColor: AppColors.primaryColor,
                borderRadius: 10,
                titleColor: AppColors.whiteColor,
                onTap: () {},
              ),
            ),
          ],
        ),
      );
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                appBar(),
                listSelectedTime(),
                liveChart(),
                popularPairs(),
                tradingHistory(),
                SizedBox(height: 75),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          color: AppColors.buttonDarkLightColor,
          child: buttonAction(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
