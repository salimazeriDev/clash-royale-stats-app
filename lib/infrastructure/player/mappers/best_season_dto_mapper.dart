import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/best_season.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/best_season_dto.dart';

import 'package:injectable/injectable.dart';

@injectable
class BestSeasonDtoMapper extends DataMapper<BestSeasonDto, BestSeason> {
  @override
  BestSeason apply(BestSeasonDto data) {
    return BestSeason(
      id: data.id,
      trophies: data.trophies,
    );
  }
}
