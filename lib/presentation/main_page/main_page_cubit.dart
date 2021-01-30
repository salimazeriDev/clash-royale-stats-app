import 'package:bloc/bloc.dart';
import 'package:clashroyalestats/domain/player/use_cases/get_player_use_case.dart';
import 'package:clashroyalestats/presentation/main_page/main_page_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainPageCubit extends Cubit<MainPageState> {
  final GetPlayerUseCase _getPlayerUseCase;

  MainPageCubit(this._getPlayerUseCase) : super(MainPageState.showLoading());

  void init() {
    emit(MainPageState.idle());
  }

  void searchPlayer(String playerTag) {
    try {
      _searchPlayer(playerTag);
    } on Exception catch (e) {
      emit(MainPageState.searchPlayerFailure(e));
    }
  }

  Future<void> _searchPlayer(String playerTag) async {
    final _player = await _getPlayerUseCase(playerTag);
    emit(MainPageState.searchPlayerSuccess(_player));
  }
}
