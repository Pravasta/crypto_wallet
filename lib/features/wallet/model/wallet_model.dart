import 'dart:math';

import 'package:crypto_wallet/core/constant/other/assets.gen.dart';
import 'package:flutter/material.dart';

class WalletModel {
  static final Random random = Random();

  static Color getRandomColor() {
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  static final List<Map<String, dynamic>> listCard = [
    {
      'number_card': '1901 0330 6060 5555',
      'name': 'Pravasta Rama F',
      'expire': '03/29',
    },
    {
      'number_card': '1902 5789 9876 6666',
      'name': 'Marcus Aurelius',
      'expire': '03/30',
    },
    {
      'number_card': '1903 4567 8976 0000',
      'name': 'Android Test',
      'expire': '03/25',
    }
  ];

  static final List<Map<String, dynamic>> listMenuWallet = [
    {
      'label': 'Deposit',
      'icon': Assets.icons.deposit.path,
      'index': 0,
    },
    {
      'label': 'Send',
      'icon': Assets.icons.send.path,
      'index': 1,
    },
    {
      'label': 'Receive',
      'icon': Assets.icons.receive.path,
      'index': 2,
    },
    {
      'label': 'Withdraw',
      'icon': Assets.icons.withdraw.path,
      'index': 3,
    }
  ];

  static final List<Map<String, dynamic>> listAssets = [
    {
      'name': 'BTC',
      'percentage': 46.0,
    },
    {
      'name': 'ATOM',
      'percentage': 35.0,
    },
    {
      'name': 'ETH',
      'percentage': 10.0,
    },
    {
      'name': 'CRO',
      'percentage': 7.0,
    },
    {
      'name': 'DOGE',
      'percentage': 2.0,
    },
  ].map((asset) {
    return {
      ...asset,
      'color': getRandomColor(),
    };
  }).toList();
}
