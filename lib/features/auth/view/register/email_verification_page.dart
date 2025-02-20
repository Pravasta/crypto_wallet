import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:crypto_wallet/core/components/message/message_bar.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/features/auth/bloc/resend_otp/resend_otp_cubit.dart';
import 'package:crypto_wallet/features/auth/bloc/verify_otp_sign_up/verify_otp_sign_up_cubit.dart';
import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key, required this.email});

  final String email;

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  bool isObsecure = true;
  late TextEditingController _codeController;

  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _codeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Scaffold content() {
      Widget fieldEmailCode() {
        return DefaultField(
          hintText: 'Enter Email Code',
          inputType: TextInputType.number,
          controller: _codeController,
        );
      }

      Widget buttonNext() {
        return BlocConsumer<VerifyOtpSignUpCubit, VerifyOtpSignUpState>(
          builder: (context, state) {
            if (state.state == VerifyOtpSignUpStatus.loading) {
              return Center(child: CircularProgressIndicator());
            }

            return DefaultButton(
              title: 'Submit',
              onTap: () {
                context
                    .read<VerifyOtpSignUpCubit>()
                    .verifyOtpSignUp(_codeController.text.trim(), widget.email);
              },
              height: 60,
            );
          },
          listener: (context, state) {
            if (state.state == VerifyOtpSignUpStatus.error) {
              MessageBar.messageBar(context, state.message);
            }

            if (state.state == VerifyOtpSignUpStatus.success) {
              MessageBar.messageBar(context, state.message);
              Navigation.pushName(RoutesName.secureAccount);
            }
          },
        );
      }

      Widget description() {
        return Text(
          'Please enter the 6-digit verification code that was sent to ${widget.email}. The code is valid for 20 minutes',
          style: AppText.text16.copyWith(
            fontWeight: FontWeight.w300,
            color: AppColors.whiteColor.withAlpha(180),
            height: 1.6,
          ),
        );
      }

      return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: AppColors.whiteColor,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 15,
              children: [
                Text(
                  'Email Verification',
                  style: AppText.text26.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                description(),
                SizedBox(height: 5),
                fieldEmailCode(),
                SizedBox(height: 5),
                buttonNext(),
                SizedBox(height: 5),
                BlocConsumer<ResendOtpCubit, ResendOtpState>(
                  builder: (context, state) {
                    if (state.state == ResendOtpStateStatus.loading) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<ResendOtpCubit>()
                              .reSendOtp(widget.email);
                        },
                        child: Text(
                          'Send Code Again',
                          style: AppText.text16.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                  listener: (context, state) {
                    if (state.state == ResendOtpStateStatus.error) {
                      MessageBar.messageBar(context, state.message);
                    }

                    if (state.state == ResendOtpStateStatus.success) {
                      MessageBar.messageBar(context, state.message);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      );
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              VerifyOtpSignUpCubit(AuthRepositoryImpl.create()),
        ),
        BlocProvider(
          create: (context) => ResendOtpCubit(AuthRepositoryImpl.create()),
        ),
      ],
      child: content(),
    );
  }
}
