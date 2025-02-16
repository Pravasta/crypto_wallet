import 'package:crypto_wallet/features/market/view/tab/all_coinst_market_tab.dart';
import 'package:crypto_wallet/features/market/view/tab/most_lost_market_tab.dart';
import 'package:crypto_wallet/features/market/view/tab/most_trade_market_tab.dart';
import 'package:crypto_wallet/features/market/view/tab/new_coin_market_tab.dart';

class MarketModel {
  static final List<Map<String, dynamic>> listTabMarket = [
    {
      'label': 'All Coins',
      'index': 0,
      'tab': AllCoinstMarketTab(),
    },
    {
      'label': 'Most Trade',
      'index': 1,
      'tab': MostTradeMarketTab(),
    },
    {
      'label': 'Most Lose',
      'index': 2,
      'tab': MostLostMarketTab(),
    },
    {
      'label': 'New Coin',
      'index': 3,
      'tab': NewCoinMarketTab(),
    }
  ];

  static final List<Map<String, dynamic>> marketData = [
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    },
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    },
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    },
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    },
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    },
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    },
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    },
    {
      'title': 'SOL',
      'type': 'USDT',
      'vol': '51 431 281,89',
      'top_price': 118.12,
      'low_price': 1.001,
      'last_price': 0.060,
      'change': 0.72,
    }
  ];
}
