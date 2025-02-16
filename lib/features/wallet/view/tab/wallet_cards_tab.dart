import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/core/extensions/build_context_ext.dart';
import 'package:crypto_wallet/features/wallet/model/wallet_model.dart';
import 'package:crypto_wallet/features/wallet/view/widget/card_wallet_widget.dart';
import 'package:crypto_wallet/features/wallet/view/widget/menu_widget.dart';
import 'package:crypto_wallet/features/wallet/view/widget/wallet_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../widget/transaction_widget.dart';

class WalletCardsTab extends StatelessWidget {
  const WalletCardsTab({super.key});

  @override
  Widget build(BuildContext context) {
    bool isObsecure = false;

    Widget myBalance() {
      return StatefulBuilder(
        builder: (context, setState) {
          return Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    isObsecure
                        ? 'My Balance: *********'
                        : 'My Balance: \$2,760.23',
                    style: AppText.text16.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  child: Icon(
                    isObsecure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget cardWallet() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: WalletModel.listCard
                .map(
                  (e) => CardWalletWidget(data: e),
                )
                .toList(),
          ),
        ),
      );
    }

    Widget listMenuButton() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: MenuWidget(),
      );
    }

    Widget nullTransactionHistory() {
      return Expanded(
        child: Container(
          width: context.deviceWidth,
          height: 100,
          decoration: BoxDecoration(
            color: AppColors.buttonDarkColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Center(
            child: Text(
              'Transaction History null',
              style: AppText.text16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }

    Widget transactionHistory() {
      return WalletBottomSheet(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Transaction History',
                style: AppText.text16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.greyColor)),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(
                      Icons.date_range_outlined,
                      color: AppColors.greyColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '16.06.2022',
                      style: AppText.text16.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Expanded(child: Divider(color: AppColors.greyColor)),
              ],
            ),
            TransactionWidget(),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          myBalance(),
          cardWallet(),
          listMenuButton(),
          transactionHistory(),
        ],
      ),
    );
  }
}
