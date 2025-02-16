import 'package:flutter/material.dart';

import '../../constant/style/app_colors.dart';
import '../../constant/style/app_text.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      titleTextStyle: AppText.text20.copyWith(fontWeight: FontWeight.bold),
      foregroundColor: AppColors.backgroundColor,
      surfaceTintColor: AppColors.backgroundColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(5),
        backgroundColor: AppColors.primaryColor,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      elevation: 4,
      backgroundColor: AppColors.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: AppColors.primaryColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.buttonDarkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      selectedLabelStyle: AppText.text14.copyWith(fontWeight: FontWeight.bold),
      unselectedItemColor: AppColors.greyColor,
      unselectedLabelStyle: AppText.text14
          .copyWith(color: AppColors.greyColor, fontWeight: FontWeight.bold),
    ),
    tabBarTheme: TabBarThemeData(
      labelStyle: AppText.text14.copyWith(
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: AppText.text14.copyWith(
        color: AppColors.greyColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
