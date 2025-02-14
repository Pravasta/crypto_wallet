import 'package:crypto_wallet/core/constant/other/assets.gen.dart';

class HomeModel {
  static final List<Map<String, dynamic>> listMarketMovers = [
    {
      'name': 'BTC/USD',
      'icon': Assets.icons.btc.path,
      'price_now': 30113.80,
      'increased': 2.76,
      'chart': null,
      'income': 394897432.26,
    },
    {
      'name': 'Sol/USD',
      'icon': Assets.icons.sol.path,
      'price_now': 30113.80,
      'increased': 2.76,
      'chart': null,
      'income': 394897432.26,
    },
    {
      'name': 'XRP/USD',
      'icon': Assets.icons.xrp.path,
      'price_now': 30113.80,
      'increased': 2.76,
      'chart': null,
      'income': 394897432.26,
    },
    {
      'name': 'ATC/USD',
      'icon': Assets.icons.btc.path,
      'price_now': 30113.80,
      'increased': 2.76,
      'chart': null,
      'income': 394897432.26,
    },
  ];

  static final List<Map<String, dynamic>> listPortfolio = [
    {
      'name': 'Bitcoin',
      'sort_name': 'BTC',
      'icon': Assets.icons.btc.path,
      'price': 1270.10,
      'increased': 2.76,
    },
    {
      'name': 'Solana',
      'sort_name': 'SOL',
      'icon': Assets.icons.sol.path,
      'price_now': 270.10,
      'increased': 2.76,
    },
    {
      'name': 'XRP',
      'sort_name': 'XRP',
      'icon': Assets.icons.xrp.path,
      'price_now': 30113.80,
      'increased': 2.76,
    },
    {
      'name': 'Ethereum',
      'sort_name': 'ETH',
      'icon': Assets.icons.btc.path,
      'price_now': 30113.80,
      'increased': 2.76,
    },
  ];
}
