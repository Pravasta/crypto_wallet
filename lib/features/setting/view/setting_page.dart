import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/features/setting/model/setting_model.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppBar appBar() {
      return AppBar(
        leading: IconButton(
          onPressed: () => Navigation.pop(),
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.greyColor,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Settings',
          style: AppText.text20.copyWith(fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget listSettings() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: SettingModel.listSettings.map(
          (e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e['title'],
                  style: AppText.text16.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.fieldColor,
                  ),
                  child: Column(
                    children: (e['data'] as List<Map<String, dynamic>>)
                        .map(
                          (data) => ListTile(
                            leading: Image.asset(
                              data['icon'],
                              scale: 3.5,
                            ),
                            title: Text(
                              data['label'],
                              style: AppText.text16,
                            ),
                            trailing: data['label'] != 'Theme'
                                ? Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: AppColors.greyColor,
                                  )
                                : Switch.adaptive(
                                    value: false,
                                    inactiveThumbColor: AppColors.blueColor,
                                    inactiveTrackColor: AppColors.fieldColor,
                                    activeColor: AppColors.primaryColor,
                                    activeTrackColor: AppColors.blueColor,
                                    onChanged: (value) {},
                                  ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: 10),
              ],
            );
          },
        ).toList(),
      );
    }

    Widget buttonLogout() {
      return DefaultButton(
        title: 'Logout',
        borderRadius: 10,
        titleColor: AppColors.whiteColor,
        backgroundColor: AppColors.fieldColor,
        onTap: () {
          Navigation.pushReplacement(RoutesName.auth);
        },
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              listSettings(),
              buttonLogout(),
            ],
          ),
        ),
      ),
    );
  }
}
