import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/features/main_page/cubit/bottom_nav/bottom_nav_cubit.dart';
import 'package:crypto_wallet/features/main_page/model/main_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavCubit>(
      create: (context) => BottomNavCubit(),
      child: content(),
    );
  }

  Widget content() {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, currnetIndex) {
        return Scaffold(
          body: MainPageModel.listBottomNavBar
              .map((e) => e['page'])
              .toList()
              .elementAt(currnetIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currnetIndex,
            onTap: (value) {
              context.read<BottomNavCubit>().changeBottomNavbarIndex(value);
            },
            type: BottomNavigationBarType.fixed,
            items: MainPageModel.listBottomNavBar
                .map(
                  (e) => BottomNavigationBarItem(
                    icon: Image.asset(
                      height: 50,
                      e['icon'],
                      scale: 3,
                      color: currnetIndex == e['index']
                          ? AppColors.primaryColor
                          : AppColors.greyColor,
                    ),
                    label: e['label'],
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
