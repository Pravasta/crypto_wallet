import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/trade/model/trade_model.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/style/app_colors.dart' show AppColors;
import '../../../core/constant/style/app_text.dart' show AppText;
import 'widget/pair_card_widget.dart' show PairCardWidget;

class TradePage extends StatefulWidget {
  const TradePage({super.key});

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  bool isHidePair = false;

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
              'Trade',
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

    Widget nameCoin() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BTC/USDT',
                    style: AppText.text16.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '30,113.80 = \$30,113.80 +2.76%',
                    style: AppText.text14.copyWith(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigation.pushName(RoutesName.tradingChart),
              child: Image.asset(
                Assets.icons.chart.path,
                scale: 3.5,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style: AppText.text14.copyWith(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Amount',
                        style: AppText.text14.copyWith(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  for (int i = 0; i < 11; i++)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '30,113.84',
                          style: AppText.text14.copyWith(
                            color: AppColors.redColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1,76676',
                          style: AppText.text14,
                        )
                      ],
                    ),
                  SizedBox(height: 5),
                  for (int i = 0; i < 11; i++)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '30,113.84',
                          style: AppText.text14.copyWith(
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1,76676',
                          style: AppText.text14,
                        )
                      ],
                    ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                        color: AppColors.primaryColor,
                      ),
                      tabs: [
                        Tab(
                          text: 'Buy',
                        ),
                        Tab(
                          text: 'Sell',
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  DropdownMenu(
                    inputDecorationTheme: InputDecorationTheme(
                      labelStyle: AppText.text14,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    width: context.deviceWidth,
                    initialSelection: 'limit_order',
                    textStyle: AppText.text14,
                    dropdownMenuEntries: [
                      DropdownMenuEntry(
                        value: 'limit_order',
                        label: 'Limit Order',
                      ),
                      DropdownMenuEntry(
                        value: 'market_order',
                        label: 'Market Order',
                      ),
                      DropdownMenuEntry(
                        value: 'stop_limit_order',
                        label: 'Stop Limit Order',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Available:', style: AppText.text14),
                      Text(
                        '1000 USDT',
                        style: AppText.text14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    child: DefaultField(
                      padding: 0,
                      hintText: 'Price USDT',
                      prefixIcon: Icon(
                        Icons.remove,
                        color: AppColors.greyColor,
                      ),
                      suffixIcon: Icon(
                        Icons.add,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 40,
                    child: DefaultField(
                      padding: 0,
                      hintText: 'Amount BTC',
                      prefixIcon: Icon(
                        Icons.remove,
                        color: AppColors.greyColor,
                      ),
                      suffixIcon: Icon(
                        Icons.add,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: TradeModel.listSlider
                        .map(
                          (e) => Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.fieldColor,
                            ),
                            child: Text(
                              '${e['label']}%',
                              style: AppText.text14,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    child: DefaultField(
                      padding: 10,
                      hintText: '0',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'BTC',
                          style: AppText.text14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  DefaultButton(
                    title: 'Buy BTC',
                    borderRadius: 10,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget order() {
      return StatefulBuilder(
        builder: (context, setState) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Open Orders',
                        style: AppText.text18,
                      ),
                    ),
                    Text(
                      'More',
                      style:
                          AppText.text18.copyWith(color: AppColors.blueColor),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: isHidePair,
                      checkColor: AppColors.primaryColor,
                      onChanged: (value) {
                        setState(() {
                          isHidePair = value!;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        'Hide Other Pairs',
                        style: AppText.text14,
                      ),
                    ),
                    DefaultButton(
                      width: 120,
                      height: 30,
                      backgroundColor: AppColors.fieldColor,
                      borderColor: AppColors.fieldColor,
                      titleColor: AppColors.greyColor,
                      borderRadius: 10,
                      title: 'Cancel All',
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(height: 10),
                isHidePair == false ? SizedBox() : PairCardWidget(),
              ],
            ),
          );
        },
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                appBar(),
                nameCoin(),
                content(),
                order(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
