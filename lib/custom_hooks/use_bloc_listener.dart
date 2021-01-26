import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef BlocBuilderCondition<STATE> = bool Function(STATE current);
typedef BlocListener<STATE, BuildContext> = void Function(STATE current, BuildContext context);

bool defaultBuildWhen<STATE>(STATE s) => true;

STATE useCubitBuilder<BLOC extends Cubit, STATE>(Cubit<STATE> bloc, {BlocBuilderCondition<STATE> buildWhen}) {
  final buildWhenConditioner = buildWhen ?? defaultBuildWhen;
  final state = useMemoized(() => bloc.where(buildWhenConditioner), [bloc.state]);
  return useStream(state, initialData: bloc.state).data;
}

void useCubitListener<BLOC extends Cubit, STATE>(Cubit<STATE> bloc, BlocListener<STATE, BuildContext> listener,
    {BlocBuilderCondition<STATE> listenWhen}) {
  final BuildContext context = useContext();
  final listenWhenConditioner = listenWhen ?? defaultBuildWhen;
  useMemoized(() {
    final stream = bloc.where(listenWhenConditioner).listen((state) => listener(state, context));
    return stream.cancel;
  }, [bloc]);
}
