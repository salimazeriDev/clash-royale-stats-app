import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

T useBloc<T extends Bloc>([List<Object> keys = const <dynamic>[]]) {
  final dynamic bloc = useMemoized<T>(() => GetIt.instance<T>(), keys);
  useEffect(() => bloc.dispose, [bloc]);
  return bloc;
}

T useCubit<T extends Cubit>([List<Object> keys = const <dynamic>[]]) {
  final dynamic cubit = useMemoized(() => GetIt.instance<T>(), keys);
  useEffect(() => cubit.close, [cubit]);
  return cubit;
}
