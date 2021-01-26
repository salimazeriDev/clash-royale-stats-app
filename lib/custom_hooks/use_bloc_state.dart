import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

S useCubitState<B extends Cubit<S>, S>() {
  final context = useContext();
  final bloc = BlocProvider.of<B>(context);

  final stream = useMemoized(() => bloc.skip(1), [bloc.state]);
  return useStream(stream, initialData: bloc.state).data;
}
