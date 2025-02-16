import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/features/favorite/model/favorite_model.dart';
import 'package:crypto_wallet/features/favorite/view/widget/favorite_card_widget.dart';
import 'package:crypto_wallet/features/favorite/view/widget/header_favorite_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/other/assets.gen.dart';
import '../../../core/constant/style/app_colors.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Favorites',
              style: AppText.text20.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset(
              Assets.icons.filter.path,
              scale: 3.5,
              color: AppColors.greyColor,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return HeaderFavoriteWidget();
    }

    Widget contentFavorite() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Column(
          children: FavoriteModel.favoriteData
              .map(
                (e) => FavoriteCardWidget(data: e),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              header(),
              contentFavorite(),
            ],
          ),
        ),
      ),
    );
  }
}
