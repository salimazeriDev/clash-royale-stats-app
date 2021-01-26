import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_state.freezed.dart';

@freezed
abstract class MainPageState with _$MainPageState {
  const factory MainPageState.showLoading() = MainPageStateShowLoading;

  const factory MainPageState.idle() = MainPageStateIdle;
}
