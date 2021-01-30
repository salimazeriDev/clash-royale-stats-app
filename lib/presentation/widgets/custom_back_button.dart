import 'package:auto_route/auto_route.dart';
import 'package:clashroyalestats/style/colors.dart';
import 'package:clashroyalestats/style/images.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Function onTap;

  const CustomBackButton({
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap?.call() ?? ExtendedNavigator.of(context).pop,
        behavior: HitTestBehavior.translucent,
        child: Icon(
          ImagesSvg.backArrow,
          color: AppColors.dark,
        ));
  }
}
