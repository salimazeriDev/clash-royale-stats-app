import 'package:clashroyalestats/custom_hooks/use_bloc.dart';
import 'package:clashroyalestats/custom_hooks/use_bloc_listener.dart';
import 'package:clashroyalestats/presentation/main_page/main_page_cubit.dart';
import 'package:clashroyalestats/presentation/main_page/main_page_state.dart';
import 'package:clashroyalestats/presentation/widgets/custom_app_bar.dart';
import 'package:clashroyalestats/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:clashroyalestats/presentation/widgets/custom_text_field.dart';
import 'package:clashroyalestats/presentation/widgets/loading_scaffold.dart';
import 'package:clashroyalestats/presentation/widgets/search_bar.dart';
import 'package:clashroyalestats/style/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPage extends HookWidget {
  const MainPage({
    Key key,
  }) : super(key: key);

  bool _shouldBuild(MainPageState state) {
    return state is MainPageStateShowLoading || state is MainPageStateIdle;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<MainPageCubit>();
    final state = useCubitBuilder(cubit, buildWhen: _shouldBuild);

    useEffect(() {
      cubit.init();
      return;
    }, [cubit]);

    return state.maybeWhen(
      idle: () => _MainPageContent(),
      showLoading: () => LoadingScaffold(),
      orElse: () => SizedBox(),
    );
  }
}

class _MainPageContent extends StatelessWidget {
  const _MainPageContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'CRStats',
        ),
        bottomNavigationBar: CustomBottomNavBar(),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: Dimens.m,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.s,
                ),
                child: SearchBar(),
              ),
            ],
          ),
        ));
  }
}
