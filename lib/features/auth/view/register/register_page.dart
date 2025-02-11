import 'package:crypto_wallet/core/common/routes/navigation.dart';
import 'package:crypto_wallet/core/common/routes/routes_name.dart';
import 'package:crypto_wallet/core/components/button/default_button.dart';
import 'package:crypto_wallet/core/components/field/default_field.dart';
import 'package:crypto_wallet/core/constant/style/app_colors.dart';
import 'package:crypto_wallet/core/constant/style/app_text.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    Widget fieldEmail() {
      return DefaultField(
        hintText: 'Enter Email',
        inputType: TextInputType.emailAddress,
      );
    }

    Widget fieldPassword() {
      return StatefulBuilder(
        builder: (context, setState) {
          return DefaultField(
            hintText: 'Password',
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

    Widget fieldConfirmPassword() {
      return StatefulBuilder(
        builder: (context, setState) {
          return DefaultField(
            hintText: 'Confirm Password',
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
      return DefaultButton(
        title: 'Next',
        onTap: () {
          Navigation.pushName(RoutesName.emailVerification);
        },
        height: 60,
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
