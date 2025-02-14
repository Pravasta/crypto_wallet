import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Favorite Page',
          style: AppText.text16,
        ),
      ),
    );
  }
}
