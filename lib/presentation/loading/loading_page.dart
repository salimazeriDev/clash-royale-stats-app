import 'package:auto_route/auto_route.dart';
import 'package:clashroyalestats/custom_hooks/use_bloc.dart';
import 'package:clashroyalestats/custom_hooks/use_bloc_listener.dart';
import 'package:clashroyalestats/presentation/loading/loading_cubit.dart';
import 'package:clashroyalestats/presentation/loading/loading_state.dart';
import 'package:clashroyalestats/presentation/widgets/loading_scaffold.dart';
import 'package:clashroyalestats/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoadingPage extends HookWidget {
  const LoadingPage({
    Key key,
  }) : super(key: key);

  bool _shouldListen(LoadingState state) {
    return state is LoadingStateError || state is LoadingStateSuccess;
  }

  void _cubitStateListener(LoadingState state, BuildContext context) {
    state.maybeWhen(
      success: () => ExtendedNavigator.of(context).replace(Routes.mainPage),
      error: (e) {},
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<LoadingCubit>();
    final state = useCubitBuilder(cubit);
    useCubitListener(cubit, _cubitStateListener, listenWhen: _shouldListen);

    useEffect(() {
      cubit.init();
      return;
    }, [cubit]);

    return state.maybeWhen(
      showLoading: () => LoadingScaffold(),
      orElse: () => const SizedBox(),
    );
  }
}
