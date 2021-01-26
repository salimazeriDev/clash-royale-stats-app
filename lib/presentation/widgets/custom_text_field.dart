import 'package:clashroyalestats/style/colors.dart';
import 'package:clashroyalestats/style/dimens.dart';
import 'package:clashroyalestats/style/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool hasSuffixIcon;
  final Widget suffixIcon;
  final Function onSuffixIconTap;

  const CustomTextField({
    @required this.controller,
    this.hint = '',
    this.hasSuffixIcon = false,
    this.suffixIcon,
    this.onSuffixIconTap,
    Key key,
  })  : assert(controller != null),
        super(key: key);

  factory CustomTextField.withClearButton({
    @required TextEditingController controller,
    @required Function onSuffixIconTap,
    bool hasSuffixIcon = true,
    String hint,
  }) {
    return CustomTextField(
      controller: controller,
      hint: hint,
      hasSuffixIcon: hasSuffixIcon,
      suffixIcon: Icon(
        Icons.close,
        color: AppColors.primary,
      ),
      onSuffixIconTap: onSuffixIconTap,
    );
  }

  InputBorder get _inputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          Dimens.xxxl,
        ),
      ),
      borderSide: BorderSide(
        color: AppColors.transparent,
        width: Dimens.one,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: Dimens.elevation,
      shadowColor: AppColors.dark,
      child: TextField(
        controller: controller,
        autocorrect: false,
        enableSuggestions: false,
        cursorColor: AppColors.primary,
        style: TextStyles.medium14Dark,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          contentPadding: EdgeInsets.symmetric(
            horizontal: Dimens.s,
          ),
          hintText: hint,
          hintStyle: TextStyles.medium14Dark50,
          focusedBorder: _inputBorder,
          enabledBorder: _inputBorder,
          suffixIcon: _suffixIcon(),
        ),
      ),
    );
  }

  Widget _suffixIcon() {
    if (hasSuffixIcon && suffixIcon != null) {
      return GestureDetector(
        onTap: onSuffixIconTap?.call,
        child: suffixIcon,
      );
    }
    return SizedBox();
  }
}
