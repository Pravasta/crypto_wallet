import 'package:flutter/material.dart';

import '../../constant/style/app_colors.dart';
import '../../constant/style/app_text.dart';

class DefaultField extends StatelessWidget {
  const DefaultField({
    super.key,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.isEnabled = true,
    this.readOnly = false,
    this.controller,
    this.onChanged,
    this.onTap,
    this.intialText,
    this.isObscure = false,
    this.maxLines = 1,
    this.inputType,
    this.backgroundColor = AppColors.fieldColor,
    this.textAlign = TextAlign.start,
    this.validator,
    this.padding = 20,
  });

  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final Widget? prefixIcon;
  final double? padding;
  final BoxConstraints? prefixIconConstraints;
  final bool isEnabled;
  final bool readOnly;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final String? intialText;
  final bool isObscure;
  final int maxLines;
  final TextInputType? inputType;
  final Color? backgroundColor;
  final TextAlign textAlign;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          validator: validator,
          enabled: isEnabled,
          readOnly: readOnly,
          controller: controller,
          onChanged: onChanged ?? (value) {},
          textAlign: textAlign,
          cursorColor: AppColors.whiteColor,
          initialValue: intialText,
          style: AppText.text16,
          keyboardType: inputType,
          obscureText: isObscure,
          maxLines: maxLines,
          decoration: InputDecoration(
            focusColor: AppColors.whiteColor,
            contentPadding: EdgeInsets.all(padding!),
            hintText: hintText,
            hintStyle: AppText.text16.copyWith(
              color: AppColors.whiteColor.withAlpha(125),
            ),
            labelText: labelText,
            labelStyle: AppText.text16,
            floatingLabelStyle: AppText.text16,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 0,
                color: AppColors.fieldColor,
              ),
            ),
            prefixIcon: prefixIcon,
            prefixIconConstraints: prefixIconConstraints,
            suffixIcon: suffixIcon,
            suffixIconConstraints: suffixIconConstraints,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.fieldColor,
              ),
            ),
            fillColor: AppColors.primaryColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
