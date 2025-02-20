import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:crypto_wallet/core/components/message/message_bar.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/data/model/request/login_request_model.dart';
import 'package:crypto_wallet/features/auth/bloc/sign_in/sign_in_cubit.dart';
import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/routes/navigation.dart';
import '../../../../core/common/routes/routes_name.dart';
import '../../../../core/constant/other/assets.gen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObsecure = true;
  late TextEditingController _emailController;
  late TextEditingController _passController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget fieldEmail() {
      return DefaultField(
        hintText: 'Enter your Email',
        inputType: TextInputType.emailAddress,
        controller: _emailController,
      );
    }

    Widget fieldPassword() {
      return StatefulBuilder(
        builder: (context, setState) {
          return DefaultField(
            hintText: 'Enter your Password',
            controller: _passController,
            inputType: TextInputType.text,
            isObscure: isObsecure,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() => isObsecure = !isObsecure);
              },
              icon: Icon(
                isObsecure ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          );
        },
      );
    }

    Widget buttonNext() {
      return BlocConsumer<SignInCubit, SignInState>(
        listener: (context, state) {
          if (state.state == SignInStateStatus.error) {
            MessageBar.messageBar(context, state.message);
          }
          if (state.state == SignInStateStatus.success) {
            MessageBar.messageBar(context, state.message);
            Navigation.pushReplacement(RoutesName.mainPage);
          }
        },
        builder: (context, state) {
          if (state.state == SignInStateStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }

          return DefaultButton(
            title: 'Next',
            onTap: () {
              final data = LoginRequestModel(
                email: _emailController.text.trim(),
                password: _passController.text.trim(),
              );

              context.read<SignInCubit>().signIn(data);
            },
            height: 60,
          );
        },
      );
    }

    Widget buttonLoginGoogle() {
      return DefaultButton(
        title: 'Continue with Google',
        onTap: () {},
        height: 60,
        iconUrl: Assets.icons.google.path,
        backgroundColor: AppColors.buttonDarkColor,
        borderColor: AppColors.buttonDarkColor,
        titleColor: AppColors.whiteColor,
      );
    }

    Widget forgotPassword() {
      return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {
            Navigation.pushName(RoutesName.forgotPassword);
          },
          child: Text(
            'Forgot Password?',
            style: AppText.text16.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    Widget notHaveAccount() {
      return Align(
        alignment: Alignment.centerLeft,
        child: Text.rich(
          TextSpan(
            text: "Don't have an account? ",
            style: AppText.text16,
            children: [
              TextSpan(
                text: 'Register',
                style: AppText.text16.copyWith(
                  color: AppColors.primaryColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Navigation.pushName(RoutesName.register),
              ),
            ],
          ),
        ),
      );
    }

    return BlocProvider<SignInCubit>(
      create: (context) => SignInCubit(AuthRepositoryImpl.create()),
      child: Scaffold(
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
                  'Log In',
                  style: AppText.text26.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                fieldEmail(),
                fieldPassword(),
                SizedBox(height: 5),
                buttonNext(),
                Text('or', style: AppText.text16),
                buttonLoginGoogle(),
                forgotPassword(),
                notHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
