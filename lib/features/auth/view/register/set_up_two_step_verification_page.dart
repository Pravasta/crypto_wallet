import 'package:crypto_wallet/core/components/message/message_bar.dart';
import 'package:crypto_wallet/features/auth/bloc/add_phone/add_phone_cubit.dart';
import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter/material.dart';

import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/components/button/default_button.dart';
import '../../../../core/constant/style/app_colors.dart';
import '../../../../core/constant/style/app_text.dart';

class SetUpTwoStepVerificationPage extends StatefulWidget {
  const SetUpTwoStepVerificationPage({super.key});

  @override
  State<SetUpTwoStepVerificationPage> createState() =>
      _SetUpTwoStepVerificationPageState();
}

class _SetUpTwoStepVerificationPageState
    extends State<SetUpTwoStepVerificationPage> {
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Scaffold content() {
      Widget fieldPhone() {
        return DefaultField(
          hintText: 'Enter Phone Number',
          inputType: TextInputType.phone,
          controller: _phoneController,
        );
      }

      Widget buttonContinue() {
        return BlocConsumer<AddPhoneCubit, AddPhoneState>(
          listener: (context, state) {
            if (state.state == AddPhoneStateStatus.error) {
              MessageBar.messageBar(context, state.message);
            }
            if (state.state == AddPhoneStateStatus.success) {
              MessageBar.messageBar(context, state.message);
              Navigation.pushName(RoutesName.setUpTwoAuthenticationCodePage);
            }
          },
          builder: (context, state) {
            if (state.state == AddPhoneStateStatus.loading) {
              return Center(child: CircularProgressIndicator());
            }

            return DefaultButton(
              title: 'Continue',
              onTap: () {
                Navigation.pushName(RoutesName.setUpTwoAuthenticationCodePage);
                // context
                //     .read<AddPhoneCubit>()
                //     .addPhoneNumber(_phoneController.text.trim());
              },
              height: 60,
            );
          },
        );
      }

      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: AppColors.whiteColor,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                'Set up 2-step verification',
                style: AppText.text22.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Enter your phone number so we can text you an authentication code.',
                textAlign: TextAlign.center,
                style: AppText.text16.copyWith(
                  color: AppColors.whiteColor.withAlpha(180),
                ),
              ),
              fieldPhone(),
              Spacer(),
              buttonContinue(),
            ],
          ),
        ),
      );
    }

    return BlocProvider(
      create: (context) => AddPhoneCubit(
        AuthRepositoryImpl.create(),
      ),
      child: content(),
    );
  }
}
