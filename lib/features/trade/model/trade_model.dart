import 'package:crypto_wallet/core/constant/other/assets.gen.dart';

class TradeModel {
  static final List<String> listTools = [
    Assets.icons.target.path,
    Assets.icons.line.path,
    Assets.icons.brush.path,
    Assets.icons.candleStick.path,
    Assets.icons.full.path,
  ];

  static final List<Map<String, dynamic>> listSlider = [
    {
      'label': 25,
      'value': 25,
    },
    {
      'label': 50,
      'value': 50,
    },
    {
      'label': 75,
      'value': 75,
    },
    {
      'label': 100,
      'value': 100,
    },
  ];
}
