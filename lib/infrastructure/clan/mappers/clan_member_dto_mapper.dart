import 'package:clashroyalestats/domain/clan/models/clan_member.dart';
import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/infrastructure/clan/dtos/clan_member_dto.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/arena_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClanMemberDtoMapper extends DataMapper<ClanMemberDto, ClanMember> {
  final ArenaDtoMapper _arenaDtoMapper;

  ClanMemberDtoMapper(this._arenaDtoMapper);

  @override
  ClanMember apply(ClanMemberDto data) {
    return ClanMember(
      tag: data.tag,
      name: data.name,
      role: data.role,
      lastSeen: data.lastSeen,
      expLevel: data.expLevel,
      trophies: data.trophies,
      arena: _arenaDtoMapper.apply(data.arena),
      clanRank: data.clanRank,
      previousClanRank: data.previousClanRank,
      donations: data.donations,
      donationsReceived: data.donationsReceived,
      clanChestPoints: data.clanChestPoints,
    );
  }
}
