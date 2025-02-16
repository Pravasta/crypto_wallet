import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/features/wallet/model/wallet_model.dart';
import 'package:crypto_wallet/features/wallet/view/widget/assets_widget.dart';
import 'package:crypto_wallet/features/wallet/view/widget/menu_widget.dart';
import 'package:crypto_wallet/features/wallet/view/widget/pie_chart_widget.dart';
import 'package:crypto_wallet/features/wallet/view/widget/wallet_bottom_sheet.dart';
import 'package:flutter/material.dart';

class WalletPortfolioTab extends StatelessWidget {
  const WalletPortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    Widget listAsset() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: WalletModel.listAssets
                .map(
                  (e) => Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: e['color'],
                    ),
                    child: Text(
                      '${e['name']} ${e['percentage']}%',
                      style: AppText.text14.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );
    }

    Widget pieChart() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: PieChartWidget(),
      );
    }

    Widget listMenu() {
      return Padding(
        padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
        child: MenuWidget(),
      );
    }

    Widget listMyAssets() {
      return WalletBottomSheet(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'My Assets',
                style: AppText.text16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AssetsWidget(),
            AssetsWidget(),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          listAsset(),
          pieChart(),
          listMenu(),
          listMyAssets(),
        ],
      ),
    );
  }
}
