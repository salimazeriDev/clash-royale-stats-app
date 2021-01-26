import 'package:bloc/bloc.dart';
import 'package:clashroyalestats/domain/game_cards/use_cases/fetch_game_cards_use_case.dart';
import 'package:clashroyalestats/presentation/loading/loading_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoadingCubit extends Cubit<LoadingState> {
  final FetchGameCardsUseCase _fetchCardsUseCase;

  LoadingCubit(this._fetchCardsUseCase) : super(LoadingState.showLoading());

  void init() {
    try {
      _init();
    } on Exception catch (e) {
      _handleException(e);
    }
  }

  Future<void> _init() async {
    await Future.wait([_fetchCardsUseCase()]);
    emit(LoadingState.success());
  }

  void _handleException(Exception e) {
    emit(LoadingState.error(e));
  }
}
