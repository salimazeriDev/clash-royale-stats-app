import 'package:clashroyalestats/domain/player/models/best_season.dart';
import 'package:clashroyalestats/domain/player/models/current_season.dart';
import 'package:clashroyalestats/domain/player/models/previous_season.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_statistics.freezed.dart';

@freezed
abstract class LeagueStatistics with _$LeagueStatistics {
  factory LeagueStatistics({
    CurrentSeason currentSeason,
    PreviousSeason previousSeason,
    BestSeason bestSeason,
  }) = _LeagueStatistics;
}
