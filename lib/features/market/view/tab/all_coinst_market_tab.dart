import 'package:crypto_wallet/features/market/model/market_model.dart';
import 'package:crypto_wallet/features/market/view/widgets/header_market_tab_widget.dart';
import 'package:crypto_wallet/features/market/view/widgets/market_coin_widget.dart';
import 'package:flutter/material.dart';

class AllCoinstMarketTab extends StatelessWidget {
  const AllCoinstMarketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderMarketTabWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              children: MarketModel.marketData
                  .map(
                    (e) => MarketCoinWidget(data: e),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
