
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.freezed.dart';

@freezed
abstract class LoadingState with _$LoadingState {
  const factory LoadingState.showLoading() = LoadingStateShowLoading;
  const factory LoadingState.success() = LoadingStateSuccess;
  const factory LoadingState.error(Exception e) = LoadingStateError;
}
