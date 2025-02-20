import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:crypto_wallet/core/components/message/message_bar.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:crypto_wallet/data/model/request/register_request_model.dart';
import 'package:crypto_wallet/features/auth/bloc/signup/signup_cubit.dart';
import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupCubit>(
      create: (context) => SignupCubit(AuthRepositoryImpl.create()),
      child: _RegisterPage(),
    );
  }
}

class _RegisterPage extends StatefulWidget {
  @override
  State<_RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<_RegisterPage> {
  bool isObsecure = true;
  late TextEditingController _emailController;
  late TextEditingController _passController;
  late TextEditingController _confirmationPassController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _confirmationPassController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Widget fieldEmail() {
      return DefaultField(
        hintText: 'Enter Email',
        inputType: TextInputType.emailAddress,
        controller: _emailController,
      );
    }

    Widget fieldPassword() {
      return StatefulBuilder(
        builder: (context, setState) {
          return DefaultField(
            hintText: 'Password',
            inputType: TextInputType.text,
            isObscure: isObsecure,
            controller: _passController,
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

    Widget fieldConfirmPassword() {
      return StatefulBuilder(
        builder: (context, setState) {
          return DefaultField(
            hintText: 'Confirm Password',
            inputType: TextInputType.text,
            isObscure: isObsecure,
            controller: _confirmationPassController,
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
      return BlocConsumer<SignupCubit, SignupState>(
        builder: (context, state) {
          if (state.state == SignUpStateStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }

          return DefaultButton(
            title: 'Next',
            onTap: () {
              final data = RegisterRequestModel(
                email: _emailController.text.trim(),
                password: _passController.text.trim(),
                confirmationPassword: _confirmationPassController.text.trim(),
              );

              context.read<SignupCubit>().signUp(data);
            },
            height: 60,
          );
        },
        listener: (context, state) {
          if (state.state == SignUpStateStatus.error) {
            MessageBar.messageBar(context, state.message);
          }

          if (state.state == SignUpStateStatus.success) {
            MessageBar.messageBar(context, state.message);
            Navigation.pushName(
              RoutesName.emailVerification,
              arguments: _emailController.text.trim(),
            );
          }
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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 15,
            children: [
              Text(
                'Create an Account',
                style: AppText.text26.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              fieldEmail(),
              fieldPassword(),
              fieldConfirmPassword(),
              SizedBox(height: 5),
              buttonNext(),
            ],
          ),
        ),
      ),
    );
  }
}
