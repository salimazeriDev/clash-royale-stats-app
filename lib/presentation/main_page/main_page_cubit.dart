import 'package:bloc/bloc.dart';
import 'package:clashroyalestats/domain/clan/use_cases/get_clan_info_use_case.dart';
import 'package:clashroyalestats/domain/player/use_cases/get_player_use_case.dart';
import 'package:clashroyalestats/presentation/main_page/main_page_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainPageCubit extends Cubit<MainPageState> {
  final GetPlayerUseCase _getPlayerUseCase;
  final GetClanInfoUseCase _getClanInfoUseCase;

  MainPageCubit(
    this._getPlayerUseCase,
    this._getClanInfoUseCase,
  ) : super(MainPageState.showLoading());

  void init() {
    emit(MainPageState.idle());
  }

  void searchPlayerOrClan(String tag) {
    try {
      _searchClan(tag);
    } on Exception catch (e) {
      emit(MainPageState.searchFailure(e));
    }
  }

  // Future<void> _searchPlayer(String tag) async {
  //   final _player = await _getPlayerUseCase(tag);
  //   emit(MainPageState.searchSuccess(player: _player));
  // }

  Future<void> _searchClan(String tag) async {
    final _clan = await _getClanInfoUseCase(tag);
    emit(MainPageState.searchSuccess(clan: _clan));
  }
}
