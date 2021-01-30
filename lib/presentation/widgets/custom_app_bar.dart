import 'package:clashroyalestats/style/colors.dart';
import 'package:clashroyalestats/style/dimens.dart';
import 'package:clashroyalestats/style/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final TextStyle titleStyle;
  final Brightness brightness;

  const CustomAppBar({
    this.title = '',
    this.titleStyle = TextStyles.bold20Dark,
    this.brightness = Brightness.light,
    Key key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(Dimens.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: brightness,
      backgroundColor: AppColors.white,
      automaticallyImplyLeading: false,
      elevation: Dimens.elevation,
      shadowColor: AppColors.dark,
      flexibleSpace: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(
            left: Dimens.m,
            right: Dimens.m,
            bottom: Dimens.s,
          ),
          child: _content(context),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
      ],
    );
  }
}
