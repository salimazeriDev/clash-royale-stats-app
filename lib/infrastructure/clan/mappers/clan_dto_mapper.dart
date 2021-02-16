import 'package:clashroyalestats/domain/clan/models/clan.dart';
import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/infrastructure/clan/dtos/clan_dto.dart';
import 'package:clashroyalestats/infrastructure/clan/mappers/clan_member_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/clan/mappers/location_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClanDtoMapper extends DataMapper<ClanDto, Clan> {
  final LocationDtoMapper _locationDtoMapper;
  final ClanMemberDtoMapper _clanMemberDtoMapper;

  ClanDtoMapper(this._locationDtoMapper, this._clanMemberDtoMapper);

  @override
  Clan apply(ClanDto data) {
    return Clan(
      tag: data.tag,
      name: data.name,
      type: data.type,
      description: data.description,
      badgeId: data.badgeId,
      clanChestLevel: data.clanChestLevel,
      clanChestMaxLevel: data.clanChestMaxLevel,
      clanChestStatus: data.clanChestStatus,
      clanScore: data.clanScore,
      clanWarTrophies: data.clanWarTrophies,
      location: _locationDtoMapper.apply(data.location),
      memberList: data.memberList.map(_clanMemberDtoMapper.apply).toList(),
    );
  }
}
