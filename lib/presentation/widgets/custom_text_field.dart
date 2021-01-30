import 'package:clashroyalestats/style/colors.dart';
import 'package:clashroyalestats/style/dimens.dart';
import 'package:clashroyalestats/style/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Function(String) onSubmitted;
  final Function(String) onChanged;
  final TextInputAction textInputAction;

  const CustomTextField({
    @required this.controller,
    this.hint = '',
    this.onSubmitted,
    this.onChanged,
    this.textInputAction = TextInputAction.done,
    Key key,
  })  : assert(controller != null),
        super(key: key);

  InputBorder get _inputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(Dimens.xxxl),
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
        onChanged: onChanged?.call,
        onSubmitted: onSubmitted?.call,
        textInputAction: textInputAction,
        autocorrect: false,
        enableSuggestions: false,
        cursorColor: AppColors.primary,
        style: TextStyles.medium14Dark,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: Dimens.s),
          hintText: hint,
          hintStyle: TextStyles.medium14Dark50,
          focusedBorder: _inputBorder,
          enabledBorder: _inputBorder,
        ),
      ),
    );
  }
}
