import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/previous_season.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/previous_season_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class PreviousSeasonDtoMapper
    extends DataMapper<PreviousSeasonDto, PreviousSeason> {
  @override
  PreviousSeason apply(PreviousSeasonDto data) {
    return PreviousSeason(
      id: data.id,
      trophies: data.trophies,
      bestTrophies: data.bestTrophies,
    );
  }
}
