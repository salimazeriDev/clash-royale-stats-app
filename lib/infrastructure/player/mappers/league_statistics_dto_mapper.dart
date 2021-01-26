import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/league_statistics.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/league_statistics_dto.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/best_season_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/current_season_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/previous_season_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class LeagueStatisticsDtoMapper
    extends DataMapper<LeagueStatisticsDto, LeagueStatistics> {
  final CurrentSeasonDtoMapper _currentSeasonDtoMapper;
  final PreviousSeasonDtoMapper _previousSeasonDtoMapper;
  final BestSeasonDtoMapper _bestSeasonDtoMapper;

  LeagueStatisticsDtoMapper(
    this._currentSeasonDtoMapper,
    this._previousSeasonDtoMapper,
    this._bestSeasonDtoMapper,
  );

  @override
  LeagueStatistics apply(LeagueStatisticsDto data) {
    return LeagueStatistics(
      currentSeason: _currentSeasonDtoMapper.apply(data.currentSeason),
      previousSeason: _previousSeasonDtoMapper.apply(data.previousSeason),
      bestSeason: _bestSeasonDtoMapper.apply(data.bestSeason),
    );
  }
}
