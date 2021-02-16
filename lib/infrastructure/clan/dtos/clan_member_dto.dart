import 'package:clashroyalestats/infrastructure/player/dtos/arena_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan_member_dto.freezed.dart';
part 'clan_member_dto.g.dart';

@freezed
abstract class ClanMemberDto with _$ClanMemberDto {
  factory ClanMemberDto({
    String tag,
    String name,
    String role,
    String lastSeen,
    int expLevel,
    int trophies,
    ArenaDto arena,
    int clanRank,
    int previousClanRank,
    int donations,
    int donationsReceived,
    int clanChestPoints,
  }) = _ClanMemberDto;

  factory ClanMemberDto.fromJson(Map<String, dynamic> json) =>
      _$ClanMemberDtoFromJson(json);
}
