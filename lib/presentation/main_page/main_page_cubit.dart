import 'package:bloc/bloc.dart';
import 'package:clashroyalestats/presentation/main_page/main_page_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainPageCubit extends Cubit<MainPageState> {
  MainPageCubit() : super(MainPageState.showLoading());

  void init() {
    emit(MainPageState.idle());
  }
}
