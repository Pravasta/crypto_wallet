import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/core/constant/other/text.dart';

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
      'price_now': 1270.10,
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

  static final List<Map<String, dynamic>> listNews = [
    {
      'name': 'Decrypt',
      'time': 18,
      'coin_name': 'USD Coin',
      'image': Assets.images.newsImage.path,
      'description': RandomText.randomText,
    },
    {
      'name': 'Decrypt',
      'time': 19,
      'coin_name': 'Bitcoin',
      'image': Assets.images.newsImage.path,
      'description': RandomText.randomText,
    },
    {
      'name': 'Decrypt',
      'time': 20,
      'coin_name': 'Bitcoin',
      'image': Assets.images.newsImage.path,
      'description': RandomText.randomText,
    },
    {
      'name': 'Decrypt',
      'time': 21,
      'coin_name': 'ATH',
      'image': Assets.images.newsImage.path,
      'description': RandomText.randomText,
    },
    {
      'name': 'Decrypt',
      'time': 22,
      'coin_name': 'Solana',
      'image': Assets.images.newsImage.path,
      'description': RandomText.randomText,
    },
  ];
}
