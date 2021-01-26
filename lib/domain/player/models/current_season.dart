import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_season.freezed.dart';

@freezed
abstract class CurrentSeason with _$CurrentSeason {
  factory CurrentSeason({
    int trophies,
    int bestTrophies,
  }) = _CurrentSeason;
}
