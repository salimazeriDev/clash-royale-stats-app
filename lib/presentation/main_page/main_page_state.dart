import 'package:clashroyalestats/domain/clan/models/clan.dart';
import 'package:clashroyalestats/domain/player/models/player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_state.freezed.dart';

@freezed
abstract class MainPageState with _$MainPageState {
  const factory MainPageState.showLoading() = MainPageStateShowLoading;

  const factory MainPageState.idle() = MainPageStateIdle;

  const factory MainPageState.searchSuccess({
    Player player,
    Clan clan,
  }) = MainPageStateSearchSuccess;

  const factory MainPageState.searchFailure(Exception exception) =
      MainPageStateSearchFailure;
}
