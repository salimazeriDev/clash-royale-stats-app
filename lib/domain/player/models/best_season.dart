import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_season.freezed.dart';

@freezed
abstract class BestSeason with _$BestSeason {
  factory BestSeason({
    String id,
    int trophies,
  }) = _BestSeason;
}
