import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/current_season.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/current_season_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class CurrentSeasonDtoMapper
    extends DataMapper<CurrentSeasonDto, CurrentSeason> {
  @override
  CurrentSeason apply(CurrentSeasonDto data) {
    return CurrentSeason(
      trophies: data.trophies,
      bestTrophies: data.bestTrophies,
    );
  }
}
