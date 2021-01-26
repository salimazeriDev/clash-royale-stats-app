import 'package:clashroyalestats/presentation/widgets/custom_app_bar.dart';
import 'package:clashroyalestats/presentation/widgets/custom_circular_progress_indicator.dart';
import 'package:clashroyalestats/style/colors.dart';
import 'package:flutter/material.dart';

class LoadingScaffold extends StatelessWidget {
  const LoadingScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'CRStats',
      ),
      body: Container(
        color: AppColors.white,
        alignment: Alignment.center,
        child: CustomCircularProgressIndicator(),
      ),
    );
  }
}
