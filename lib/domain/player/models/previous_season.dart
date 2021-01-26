import 'package:freezed_annotation/freezed_annotation.dart';

part 'previous_season.freezed.dart';

@freezed
abstract class PreviousSeason with _$PreviousSeason {
  factory PreviousSeason({
    String id,
    int trophies,
    int bestTrophies,
  }) = _PreviousSeason;
}
