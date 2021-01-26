import 'package:clashroyalestats/infrastructure/player/dtos/best_season_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/current_season_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/previous_season_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_statistics_dto.freezed.dart';
part 'league_statistics_dto.g.dart';

@freezed
abstract class LeagueStatisticsDto with _$LeagueStatisticsDto {
  factory LeagueStatisticsDto({
    CurrentSeasonDto currentSeason,
    PreviousSeasonDto previousSeason,
    BestSeasonDto bestSeason,
  }) = _LeagueStatisticsDto;

  factory LeagueStatisticsDto.fromJson(Map<String, dynamic> json) =>
      _$LeagueStatisticsDtoFromJson(json);
}
