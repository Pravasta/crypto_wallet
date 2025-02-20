import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:crypto_wallet/features/favorite/view/favorite_page.dart';
import 'package:crypto_wallet/features/home/view/home_page.dart';
import 'package:crypto_wallet/features/market/view/market_page.dart';

import 'package:crypto_wallet/features/wallet/view/wallet_page.dart';

import '../../trade/view/trade_page.dart';

class MainPageModel {
  static final List<Map<String, dynamic>> listBottomNavBar = [
    {
      'icon': Assets.icons.home.path,
      'label': 'Home',
      'page': HomePage(),
      'index': 0,
    },
    {
      'icon': Assets.icons.trade.path,
      'label': 'Trade',
      'page': TradePage(),
      'index': 1,
    },
    {
      'icon': Assets.icons.market.path,
      'label': 'Market',
      'page': MarketPage(),
      'index': 2,
    },
    {
      'icon': Assets.icons.favorite.path,
      'label': 'Favorite',
      'page': FavoritePage(),
      'index': 3,
    },
    {
      'icon': Assets.icons.wallet.path,
      'label': 'Wallet',
      'page': WalletPage(),
      'index': 4,
    }
  ];
}
