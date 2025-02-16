import 'package:flutter/material.dart';

import '../../model/market_model.dart';
import '../widgets/header_market_tab_widget.dart';
import '../widgets/market_coin_widget.dart';

class MostLostMarketTab extends StatelessWidget {
  const MostLostMarketTab({super.key});

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
