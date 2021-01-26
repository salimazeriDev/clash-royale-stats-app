import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/clan.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/clan_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClanDtoMapper extends DataMapper<ClanDto, Clan> {
  @override
  Clan apply(ClanDto data) {
    return Clan(
      tag: data.tag,
      name: data.name,
      badgeId: data.badgeId,
    );
  }
}
