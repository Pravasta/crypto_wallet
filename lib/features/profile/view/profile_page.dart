import 'package:flutter/material.dart';

import '../../../core/common/routes/navigation.dart' show Navigation;
import '../../../core/constant/style/app_colors.dart' show AppColors;
import '../../../core/constant/style/app_text.dart' show AppText;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
          'Profile',
          style: AppText.text20.copyWith(fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget photoProfile() {
      return Container();
    }

    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            photoProfile(),
          ],
        ),
      ),
    );
  }
}
